
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {int * macs; } ;
struct vtnet_mac_filter {TYPE_1__ vmf_multicast; } ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 size_t VTNET_MAX_MAC_ENTRIES ;
 int bcopy (int ,int *,int ) ;

__attribute__((used)) static u_int
vtnet_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int mcnt)
{
 struct vtnet_mac_filter *filter = arg;

 if (mcnt < VTNET_MAX_MAC_ENTRIES)
  bcopy(LLADDR(sdl), &filter->vmf_multicast.macs[mcnt],
      ETHER_ADDR_LEN);

 return (1);
}
