
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u8 ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int MAX_NUM_MULTICAST_ADDRESSES ;
 int bcopy (int ,int *,int) ;

__attribute__((used)) static u_int
em_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 u8 *mta = arg;

 if (cnt == MAX_NUM_MULTICAST_ADDRESSES)
  return (1);

 bcopy(LLADDR(sdl), &mta[cnt * ETHER_ADDR_LEN], ETHER_ADDR_LEN);

 return (1);
}
