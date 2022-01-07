
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int EFX_MAC_ADDR_LEN ;
 int EFX_MAC_MULTICAST_LIST_MAX ;
 int LLADDR (struct sockaddr_dl*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static u_int
sfxge_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint8_t *mcast_addr = arg;

 if (cnt == EFX_MAC_MULTICAST_LIST_MAX)
  return (0);

 memcpy(mcast_addr + (cnt * EFX_MAC_ADDR_LEN), LLADDR(sdl),
     EFX_MAC_ADDR_LEN);

 return (1);
}
