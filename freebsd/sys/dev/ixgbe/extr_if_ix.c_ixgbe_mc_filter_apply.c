
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sockaddr_dl {int dummy; } ;
struct ixgbe_mc_addr {int vmdq; int addr; } ;
struct adapter {int pool; struct ixgbe_mc_addr* mta; } ;


 int IXGBE_ETH_LENGTH_OF_ADDRESS ;
 int LLADDR (struct sockaddr_dl*) ;
 size_t MAX_NUM_MULTICAST_ADDRESSES ;
 int bcopy (int ,int ,int ) ;

__attribute__((used)) static u_int
ixgbe_mc_filter_apply(void *arg, struct sockaddr_dl *sdl, u_int count)
{
 struct adapter *adapter = arg;
 struct ixgbe_mc_addr *mta = adapter->mta;

 if (count == MAX_NUM_MULTICAST_ADDRESSES)
  return (0);
 bcopy(LLADDR(sdl), mta[count].addr, IXGBE_ETH_LENGTH_OF_ADDRESS);
 mta[count].vmdq = adapter->pool;

 return (1);
}
