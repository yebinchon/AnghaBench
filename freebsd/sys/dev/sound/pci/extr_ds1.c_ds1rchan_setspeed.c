
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_rchinfo {int spd; } ;
typedef int kobj_t ;



__attribute__((used)) static u_int32_t
ds1rchan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct sc_rchinfo *ch = data;

 ch->spd = speed;

 return speed;
}
