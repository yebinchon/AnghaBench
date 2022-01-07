
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {size_t sdl_nlen; int sdl_data; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct iface_addr {int peer; int ifa; } ;
struct iface {int addrs; struct iface_addr* addr; scalar_t__ mtu; int flags; int index; int * descr; int name; } ;
struct ifa_msghdr {scalar_t__ ifam_type; int ifam_addrs; int ifam_msglen; } ;
struct if_msghdr {scalar_t__ ifm_type; int ifm_msglen; int ifm_flags; int ifm_index; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int CTL_NET ;
 int ENOMEM ;
 int NET_RT_IFLIST ;
 int PF_ROUTE ;
 size_t RTAX_BRD ;
 size_t RTAX_IFA ;
 int RTAX_MAX ;
 size_t RTAX_NETMASK ;
 int RTA_IFA ;
 scalar_t__ RTM_IFINFO ;
 scalar_t__ RTM_NEWADDR ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int iface_ParseHdr (struct ifa_msghdr*,struct sockaddr**) ;
 scalar_t__ malloc (int) ;
 int ncpaddr_init (int *) ;
 int ncpaddr_setsa (int *,struct sockaddr*) ;
 int ncprange_setsa (int *,struct sockaddr*,struct sockaddr*) ;
 scalar_t__ realloc (struct iface_addr*,int) ;
 int stderr ;
 int strdup (char const*) ;
 char* strerror (int) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,int ,size_t) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;

struct iface *
iface_Create(const char *name)
{
  int mib[6], maxtries, err;
  size_t needed, namelen;
  char *buf, *ptr, *end;
  struct if_msghdr *ifm;
  struct ifa_msghdr *ifam;
  struct sockaddr_dl *dl;
  struct sockaddr *sa[RTAX_MAX];
  struct iface *iface;
  struct iface_addr *addr;

  mib[0] = CTL_NET;
  mib[1] = PF_ROUTE;
  mib[2] = 0;
  mib[3] = 0;
  mib[4] = NET_RT_IFLIST;
  mib[5] = 0;

  maxtries = 20;
  err = 0;
  do {
    if (maxtries-- == 0 || (err && err != ENOMEM)) {
      fprintf(stderr, "iface_Create: sysctl: %s\n", strerror(err));
      return ((void*)0);
    }

    if (sysctl(mib, 6, ((void*)0), &needed, ((void*)0), 0) < 0) {
      fprintf(stderr, "iface_Create: sysctl: estimate: %s\n",
                strerror(errno));
      return ((void*)0);
    }

    if ((buf = (char *)malloc(needed)) == ((void*)0)) {
      fprintf(stderr, "iface_Create: malloc failed: %s\n", strerror(errno));
      return ((void*)0);
    }

    if (sysctl(mib, 6, buf, &needed, ((void*)0), 0) < 0) {
      err = errno;
      free(buf);
      buf = ((void*)0);
    }
  } while (buf == ((void*)0));

  ptr = buf;
  end = buf + needed;
  iface = ((void*)0);
  namelen = strlen(name);

  while (ptr < end && iface == ((void*)0)) {
    ifm = (struct if_msghdr *)ptr;
    if (ifm->ifm_type != RTM_IFINFO)
      break;
    dl = (struct sockaddr_dl *)(ifm + 1);
    if (dl->sdl_nlen == namelen && !strncmp(name, dl->sdl_data, namelen)) {
      iface = (struct iface *)malloc(sizeof *iface);
      if (iface == ((void*)0)) {
        fprintf(stderr, "iface_Create: malloc: %s\n", strerror(errno));
 free(buf);
        return ((void*)0);
      }
      iface->name = strdup(name);
      iface->descr = ((void*)0);
      iface->index = ifm->ifm_index;
      iface->flags = ifm->ifm_flags;
      iface->mtu = 0;
      iface->addrs = 0;
      iface->addr = ((void*)0);
    }
    ptr += ifm->ifm_msglen;
    for (; ptr < end; ptr += ifam->ifam_msglen) {
      ifam = (struct ifa_msghdr *)ptr;

      if (ifam->ifam_type != RTM_NEWADDR)
        break;

      if (iface != ((void*)0) && ifam->ifam_addrs & RTA_IFA) {

        iface_ParseHdr(ifam, sa);

        if (sa[RTAX_IFA] && (sa[RTAX_IFA]->sa_family == AF_INET

                             || sa[RTAX_IFA]->sa_family == AF_INET6

                             )) {


          addr = (struct iface_addr *)
            realloc(iface->addr, (iface->addrs + 1) * sizeof iface->addr[0]);
          if (addr == ((void*)0))
            break;
          iface->addr = addr;

          addr += iface->addrs;
          iface->addrs++;

          ncprange_setsa(&addr->ifa, sa[RTAX_IFA], sa[RTAX_NETMASK]);
          if (sa[RTAX_BRD])
            ncpaddr_setsa(&addr->peer, sa[RTAX_BRD]);
          else
            ncpaddr_init(&addr->peer);
        }
      }
    }
  }

  free(buf);

  return iface;
}
