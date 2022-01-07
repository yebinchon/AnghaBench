
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 unsigned char* LLADDR (struct sockaddr_dl*) ;

__attribute__((used)) static u_int
al_count_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 unsigned char *mac;

 mac = LLADDR(sdl);

 if (mac[3] != 0 && mac[4] != 0 && mac[5] != 1)
  return (1);
 else
  return (0);
}
