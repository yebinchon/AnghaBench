
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int sdl_type; } ;


 int ETHER_ADDR_LEN ;

 int ROUNDUP8 (int ) ;

int
lladdropt_length(struct sockaddr_dl *sdl)
{
 switch (sdl->sdl_type) {
 case 128:
  return (ROUNDUP8(ETHER_ADDR_LEN + 2));
 default:
  return (0);
 }
}
