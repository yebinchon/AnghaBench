
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int XL_RXFILTER_ALLMULTI ;

__attribute__((used)) static u_int
xl_check_maddr_90x(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint8_t *rxfilt = arg;

 *rxfilt |= XL_RXFILTER_ALLMULTI;

 return (1);
}
