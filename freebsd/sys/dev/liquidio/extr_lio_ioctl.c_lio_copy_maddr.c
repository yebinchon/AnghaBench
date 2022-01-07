
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_int ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 scalar_t__ LIO_MAX_MULTICAST_ADDR ;
 int LLADDR (struct sockaddr_dl*) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static u_int
lio_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint64_t *mc = arg;

 if (cnt == LIO_MAX_MULTICAST_ADDR)
  return (0);

 mc += cnt;
 *mc = 0;
 memcpy(((uint8_t *)mc) + 2, LLADDR(sdl), ETHER_ADDR_LEN);


 return (1);
}
