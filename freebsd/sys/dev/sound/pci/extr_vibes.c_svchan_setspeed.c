
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_chinfo {int spd; } ;
typedef int kobj_t ;


 int RANGE (int ,int,int) ;

__attribute__((used)) static u_int32_t
svchan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct sc_chinfo *ch = data;
 RANGE(speed, 8000, 48000);
 ch->spd = speed;
 return speed;
}
