
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_dl {int sdl_len; int sdl_type; int sdl_index; int sdl_family; } ;
struct sockaddr {int dummy; } ;
struct ifnet {int if_index; } ;


 int AF_LINK ;
 int memset (struct sockaddr_dl*,int ,int) ;

struct sockaddr_dl *
link_init_sdl(struct ifnet *ifp, struct sockaddr *paddr, u_char iftype)
{
 struct sockaddr_dl *sdl;

 sdl = (struct sockaddr_dl *)paddr;
 memset(sdl, 0, sizeof(struct sockaddr_dl));
 sdl->sdl_len = sizeof(struct sockaddr_dl);
 sdl->sdl_family = AF_LINK;
 sdl->sdl_index = ifp->if_index;
 sdl->sdl_type = iftype;

 return (sdl);
}
