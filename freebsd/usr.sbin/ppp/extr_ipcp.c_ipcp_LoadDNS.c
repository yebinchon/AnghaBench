
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_5__ {int bundle; } ;
struct TYPE_4__ {char* resolv; char* resolv_nons; int resolver; TYPE_3__* dns; } ;
struct ipcp {TYPE_2__ fsm; TYPE_1__ ns; } ;
typedef int ssize_t ;
struct TYPE_6__ {scalar_t__ s_addr; } ;


 scalar_t__ INADDR_ANY ;
 scalar_t__ INADDR_NONE ;
 int LogERROR ;
 int O_RDONLY ;
 int _PATH_RESCONF ;
 int bundle_AdjustDNS (int ) ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ inet_aton (char*,TYPE_3__*) ;
 scalar_t__ isip (char) ;
 scalar_t__ issep (char) ;
 int log_Printf (int ,char*,unsigned long,unsigned long,...) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 int open (int ,int ) ;
 int read (int,char*,int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

void
ipcp_LoadDNS(struct ipcp *ipcp)
{
  int fd;

  ipcp->ns.dns[0].s_addr = ipcp->ns.dns[1].s_addr = INADDR_NONE;

  if (ipcp->ns.resolv != ((void*)0)) {
    free(ipcp->ns.resolv);
    ipcp->ns.resolv = ((void*)0);
  }
  if (ipcp->ns.resolv_nons != ((void*)0)) {
    free(ipcp->ns.resolv_nons);
    ipcp->ns.resolv_nons = ((void*)0);
  }
  ipcp->ns.resolver = 0;

  if ((fd = open(_PATH_RESCONF, O_RDONLY)) != -1) {
    struct stat st;

    if (fstat(fd, &st) == 0) {
      ssize_t got;





      if ((ipcp->ns.resolv_nons = (char *)malloc(st.st_size + 1)) == ((void*)0))
        log_Printf(LogERROR, "Failed to malloc %lu for %s: %s\n",
                   (unsigned long)st.st_size, _PATH_RESCONF, strerror(errno));
      else if ((ipcp->ns.resolv = (char *)malloc(st.st_size + 1)) == ((void*)0)) {
        log_Printf(LogERROR, "Failed(2) to malloc %lu for %s: %s\n",
                   (unsigned long)st.st_size, _PATH_RESCONF, strerror(errno));
        free(ipcp->ns.resolv_nons);
        ipcp->ns.resolv_nons = ((void*)0);
      } else if ((got = read(fd, ipcp->ns.resolv, st.st_size)) != st.st_size) {
        if (got == -1)
          log_Printf(LogERROR, "Failed to read %s: %s\n",
                     _PATH_RESCONF, strerror(errno));
        else
          log_Printf(LogERROR, "Failed to read %s, got %lu not %lu\n",
                     _PATH_RESCONF, (unsigned long)got,
                     (unsigned long)st.st_size);
        free(ipcp->ns.resolv_nons);
        ipcp->ns.resolv_nons = ((void*)0);
        free(ipcp->ns.resolv);
        ipcp->ns.resolv = ((void*)0);
      } else {
        char *cp, *cp_nons, *ncp, ch;
        int n;

        ipcp->ns.resolv[st.st_size] = '\0';
        ipcp->ns.resolver = 1;

        cp_nons = ipcp->ns.resolv_nons;
        cp = ipcp->ns.resolv;
        n = 0;

        while ((ncp = strstr(cp, "nameserver")) != ((void*)0)) {
          if (ncp != cp) {
            memcpy(cp_nons, cp, ncp - cp);
            cp_nons += ncp - cp;
          }
          if ((ncp != cp && ncp[-1] != '\n') || !issep(ncp[10])) {
            memcpy(cp_nons, ncp, 9);
            cp_nons += 9;
            cp = ncp + 9;
            continue;
          }

          for (cp = ncp + 11; issep(*cp); cp++)
            ;

          for (ncp = cp; isip(*ncp); ncp++)
            ;

          ch = *ncp;
          *ncp = '\0';
          if (n < 2 && inet_aton(cp, ipcp->ns.dns))
            n++;
          *ncp = ch;

          if ((cp = strchr(ncp, '\n')) == ((void*)0))
            cp = ncp + strlen(ncp);
          else
            cp++;
        }




        strcpy(cp_nons, cp);
        cp_nons += strlen(cp_nons) - 1;
        while (cp_nons >= ipcp->ns.resolv_nons && *cp_nons == '\n')
          *cp_nons-- = '\0';
        if (n == 2 && ipcp->ns.dns[0].s_addr == INADDR_ANY) {
          ipcp->ns.dns[0].s_addr = ipcp->ns.dns[1].s_addr;
          ipcp->ns.dns[1].s_addr = INADDR_ANY;
        }
        bundle_AdjustDNS(ipcp->fsm.bundle);
      }
    } else
      log_Printf(LogERROR, "Failed to stat opened %s: %s\n",
                 _PATH_RESCONF, strerror(errno));

    close(fd);
  }
}
