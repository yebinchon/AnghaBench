
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resolv; scalar_t__ resolver; } ;
struct ipcp {TYPE_1__ ns; } ;
typedef int ssize_t ;


 int ID0open (int ,int,int) ;
 int LogERROR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _PATH_RESCONF ;
 int close (int) ;
 int errno ;
 int log_Printf (int ,char*,int ,long,...) ;
 int remove (int ) ;
 int strerror (int ) ;
 int strlen (int ) ;
 int write (int,int ,int) ;

void
ipcp_RestoreDNS(struct ipcp *ipcp)
{
  if (ipcp->ns.resolver) {
    ssize_t got, len;
    int fd;

    if ((fd = ID0open(_PATH_RESCONF, O_WRONLY|O_TRUNC, 0644)) != -1) {
      len = strlen(ipcp->ns.resolv);
      if ((got = write(fd, ipcp->ns.resolv, len)) != len) {
        if (got == -1)
          log_Printf(LogERROR, "Failed rewriting %s: write: %s\n",
                     _PATH_RESCONF, strerror(errno));
        else
          log_Printf(LogERROR, "Failed rewriting %s: wrote %ld of %ld\n",
                     _PATH_RESCONF, (long)got, (long)len);
      }
      close(fd);
    } else
      log_Printf(LogERROR, "Failed rewriting %s: open: %s\n", _PATH_RESCONF,
                 strerror(errno));
  } else if (remove(_PATH_RESCONF) == -1)
    log_Printf(LogERROR, "Failed removing %s: %s\n", _PATH_RESCONF,
               strerror(errno));

}
