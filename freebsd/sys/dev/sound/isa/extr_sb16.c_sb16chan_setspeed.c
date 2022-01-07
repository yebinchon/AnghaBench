
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sb_chinfo {int spd; } ;
typedef int kobj_t ;



__attribute__((used)) static u_int32_t
sb16chan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct sb_chinfo *ch = data;

 ch->spd = speed;
 return speed;
}
