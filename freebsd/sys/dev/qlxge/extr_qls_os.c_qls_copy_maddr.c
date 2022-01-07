
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t u_int ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 size_t Q8_MAC_ADDR_LEN ;
 size_t Q8_MAX_NUM_MULTICAST_ADDRS ;
 int bcopy (int ,int *,size_t) ;

__attribute__((used)) static u_int
qls_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int mcnt)
{
 uint8_t *mta = arg;

 if (mcnt == Q8_MAX_NUM_MULTICAST_ADDRS)
  return (0);

 bcopy(LLADDR(sdl), &mta[mcnt * Q8_MAC_ADDR_LEN], Q8_MAC_ADDR_LEN);

 return (1);
}
