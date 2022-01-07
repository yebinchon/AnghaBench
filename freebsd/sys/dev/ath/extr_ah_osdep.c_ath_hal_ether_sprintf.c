
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 char const* ether_sprintf (int const*) ;

const char*
ath_hal_ether_sprintf(const u_int8_t *mac)
{
 return ether_sprintf(mac);
}
