
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct cryptocap {int dummy; } ;


 struct cryptocap* crypto_drivers ;
 size_t crypto_drivers_num ;

__attribute__((used)) static struct cryptocap *
crypto_checkdriver(u_int32_t hid)
{
 if (crypto_drivers == ((void*)0))
  return ((void*)0);
 return (hid >= crypto_drivers_num ? ((void*)0) : &crypto_drivers[hid]);
}
