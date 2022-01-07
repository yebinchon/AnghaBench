
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct vmxnet3_softc {int * vmx_mcast; } ;
struct sockaddr_dl {int dummy; } ;


 size_t ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 size_t VMXNET3_MULTICAST_MAX ;
 int bcopy (int ,int *,size_t) ;

__attribute__((used)) static u_int
vmxnet3_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int count)
{
 struct vmxnet3_softc *sc = arg;

 if (count < VMXNET3_MULTICAST_MAX)
  bcopy(LLADDR(sdl), &sc->vmx_mcast[count * ETHER_ADDR_LEN],
      ETHER_ADDR_LEN);

 return (1);
}
