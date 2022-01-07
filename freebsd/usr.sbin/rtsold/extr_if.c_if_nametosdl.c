
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {scalar_t__ sdl_nlen; size_t sdl_len; int * sdl_data; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct if_msghdr {scalar_t__ ifm_type; int ifm_addrs; int ifm_msglen; } ;
typedef int caddr_t ;


 scalar_t__ AF_LINK ;
 int AF_ROUTE ;
 int CTL_NET ;
 int NET_RT_IFLIST ;
 size_t RTAX_IFP ;
 int RTAX_MAX ;
 scalar_t__ RTM_IFINFO ;
 int free (char*) ;
 int get_rtaddrs (int ,struct sockaddr*,struct sockaddr**) ;
 void* malloc (size_t) ;
 int memcpy (int ,int ,size_t) ;
 int nitems (int*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (int *,char*,scalar_t__) ;
 scalar_t__ sysctl (int*,int ,char*,size_t*,int *,int ) ;

struct sockaddr_dl *
if_nametosdl(char *name)
{
 int mib[] = {CTL_NET, AF_ROUTE, 0, 0, NET_RT_IFLIST, 0};
 char *buf, *next, *lim;
 size_t len;
 struct if_msghdr *ifm;
 struct sockaddr *sa, *rti_info[RTAX_MAX];
 struct sockaddr_dl *sdl = ((void*)0), *ret_sdl;

 if (sysctl(mib, nitems(mib), ((void*)0), &len, ((void*)0), 0) < 0)
  return(((void*)0));
 if ((buf = malloc(len)) == ((void*)0))
  return(((void*)0));
 if (sysctl(mib, nitems(mib), buf, &len, ((void*)0), 0) < 0) {
  free(buf);
  return (((void*)0));
 }

 lim = buf + len;
 for (next = buf; next < lim; next += ifm->ifm_msglen) {
  ifm = (struct if_msghdr *)(void *)next;
  if (ifm->ifm_type == RTM_IFINFO) {
   sa = (struct sockaddr *)(ifm + 1);
   get_rtaddrs(ifm->ifm_addrs, sa, rti_info);
   if ((sa = rti_info[RTAX_IFP]) != ((void*)0)) {
    if (sa->sa_family == AF_LINK) {
     sdl = (struct sockaddr_dl *)(void *)sa;
     if (strlen(name) != sdl->sdl_nlen)
      continue;
     if (strncmp(&sdl->sdl_data[0],
          name,
          sdl->sdl_nlen) == 0) {
      break;
     }
    }
   }
  }
 }
 if (next == lim) {

  free(buf);
  return (((void*)0));
 }

 if ((ret_sdl = malloc(sdl->sdl_len)) == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }
 memcpy((caddr_t)ret_sdl, (caddr_t)sdl, sdl->sdl_len);

 free(buf);
 return (ret_sdl);
}
