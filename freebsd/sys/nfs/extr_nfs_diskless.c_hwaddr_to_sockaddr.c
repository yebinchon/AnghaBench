
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int32_t ;
struct sockaddr_dl {int sdl_len; void** sdl_data; int sdl_alen; int sdl_type; int sdl_family; } ;


 int AF_LINK ;
 int ETHER_ADDR_LEN ;
 int IFT_ETHER ;
 int bzero (struct sockaddr_dl*,int) ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int sscanf (char*,char*,void**,void**,void**,void**,void**,void**) ;

__attribute__((used)) static int
hwaddr_to_sockaddr(char *ev, struct sockaddr_dl *sa)
{
 char *cp;
 u_int32_t a[6];
 int count;

 bzero(sa, sizeof(*sa));
 sa->sdl_len = sizeof(*sa);
 sa->sdl_family = AF_LINK;
 sa->sdl_type = IFT_ETHER;
 sa->sdl_alen = ETHER_ADDR_LEN;
 if ((cp = kern_getenv(ev)) == ((void*)0))
  return (1);
 count = sscanf(cp, "%x:%x:%x:%x:%x:%x",
     &a[0], &a[1], &a[2], &a[3], &a[4], &a[5]);
 freeenv(cp);
 if (count != 6)
  return (1);
 sa->sdl_data[0] = a[0];
 sa->sdl_data[1] = a[1];
 sa->sdl_data[2] = a[2];
 sa->sdl_data[3] = a[3];
 sa->sdl_data[4] = a[4];
 sa->sdl_data[5] = a[5];
 return (0);
}
