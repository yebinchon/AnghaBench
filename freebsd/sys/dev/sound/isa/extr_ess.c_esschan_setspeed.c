
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ess_info {scalar_t__ newspeed; } ;
struct ess_chinfo {int spd; struct ess_info* parent; } ;
typedef int kobj_t ;


 int ess_calcspeed8 (int *) ;
 int ess_calcspeed9 (int *) ;

__attribute__((used)) static u_int32_t
esschan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct ess_chinfo *ch = data;
 struct ess_info *sc = ch->parent;

 ch->spd = speed;
 if (sc->newspeed)
  ess_calcspeed9(&ch->spd);
 else
  ess_calcspeed8(&ch->spd);
 return ch->spd;
}
