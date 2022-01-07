
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int BNXT_MAX_MC_ADDRS ;
 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int bcopy (int ,int *,int) ;

__attribute__((used)) static u_int
bnxt_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint8_t *mta = arg;

 if (cnt == BNXT_MAX_MC_ADDRS)
  return (1);

 bcopy(LLADDR(sdl), &mta[cnt * ETHER_ADDR_LEN], ETHER_ADDR_LEN);

 return (1);
}
