
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_chinfo {int spd; } ;
typedef int kobj_t ;


 scalar_t__ nm_setch (struct sc_chinfo*) ;

__attribute__((used)) static u_int32_t
nmchan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct sc_chinfo *ch = data;

 ch->spd = speed;
 return nm_setch(ch)? 0 : ch->spd;
}
