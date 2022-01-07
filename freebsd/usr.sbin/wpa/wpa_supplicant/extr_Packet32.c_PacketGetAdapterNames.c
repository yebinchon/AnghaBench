
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int sdl_nlen; int sdl_data; } ;
struct if_msghdr {scalar_t__ ifm_type; int ifm_msglen; } ;
typedef int ULONG ;
typedef char CHAR ;


 int CTL_NET ;
 int FALSE ;
 int NET_RT_IFLIST ;
 int PF_ROUTE ;
 scalar_t__ RTM_IFINFO ;
 int TRUE ;
 int bzero (char*,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int strncpy (char*,int ,int) ;
 scalar_t__ strnstr (int ,char*,int) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;

int
PacketGetAdapterNames(CHAR *namelist, ULONG *len)
{
 int mib[6];
 size_t needed;
 struct if_msghdr *ifm;
 struct sockaddr_dl *sdl;
 char *buf, *lim, *next;
 char *plist;
 int spc;
 int i, ifcnt = 0;

 plist = namelist;
 spc = 0;

 bzero(plist, *len);

 needed = 0;
 mib[0] = CTL_NET;
 mib[1] = PF_ROUTE;
 mib[2] = 0;
 mib[3] = 0;
 mib[4] = NET_RT_IFLIST;
 mib[5] = 0;

 if (sysctl (mib, 6, ((void*)0), &needed, ((void*)0), 0) < 0)
  return(FALSE);

 buf = malloc (needed);
 if (buf == ((void*)0))
  return(FALSE);

 if (sysctl (mib, 6, buf, &needed, ((void*)0), 0) < 0) {
  free(buf);
  return(FALSE);
 }

 lim = buf + needed;



 next = buf;
 while (next < lim) {
  ifm = (struct if_msghdr *)next;
  if (ifm->ifm_type == RTM_IFINFO) {
   sdl = (struct sockaddr_dl *)(ifm + 1);
   if (strnstr(sdl->sdl_data, "wlan", sdl->sdl_nlen)) {
    if ((spc + sdl->sdl_nlen) > *len) {
     free(buf);
     return(FALSE);
    }
    strncpy(plist, sdl->sdl_data, sdl->sdl_nlen);
    plist += (sdl->sdl_nlen + 1);
    spc += (sdl->sdl_nlen + 1);
    ifcnt++;
   }
  }
  next += ifm->ifm_msglen;
 }




 plist++;
 spc++;
 next = buf;
 while (next < lim) {
  ifm = (struct if_msghdr *)next;
  if (ifm->ifm_type == RTM_IFINFO) {
   sdl = (struct sockaddr_dl *)(ifm + 1);
   if (strnstr(sdl->sdl_data, "wlan", sdl->sdl_nlen)) {
    if ((spc + sdl->sdl_nlen) > *len) {
     free(buf);
     return(FALSE);
    }
    strncpy(plist, sdl->sdl_data, sdl->sdl_nlen);
    plist += (sdl->sdl_nlen + 1);
    spc += (sdl->sdl_nlen + 1);
    ifcnt++;
   }
  }
  next += ifm->ifm_msglen;
 }

 free (buf);

 *len = spc + 1;

 return(TRUE);
}
