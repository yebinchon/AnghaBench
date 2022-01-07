
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct agg_chinfo {int num; TYPE_1__* parent; } ;
struct TYPE_8__ {int active; } ;


 int APUREG_APUTYPE ;
 int APUTYPE_INACTIVE ;
 int APU_APUTYPE_SHIFT ;
 int agg_lock (TYPE_1__*) ;
 int agg_power (TYPE_1__*,int ) ;
 int agg_unlock (TYPE_1__*) ;
 int powerstate_idle ;
 int set_timer (TYPE_1__*) ;
 int wp_starttimer (TYPE_1__*) ;
 int wp_stoptimer (TYPE_1__*) ;
 int wp_wrapu (TYPE_1__*,int,int ,int) ;

__attribute__((used)) static void
aggch_stop_dac(struct agg_chinfo *ch)
{
 agg_lock(ch->parent);


 ch->parent->active &= ~(1 << ch->num);

 wp_wrapu(ch->parent, (ch->num << 1) | 32, APUREG_APUTYPE,
     APUTYPE_INACTIVE << APU_APUTYPE_SHIFT);
 wp_wrapu(ch->parent, (ch->num << 1) | 33, APUREG_APUTYPE,
     APUTYPE_INACTIVE << APU_APUTYPE_SHIFT);

 if (ch->parent->active) {
  set_timer(ch->parent);
  wp_starttimer(ch->parent);
 } else {
  wp_stoptimer(ch->parent);
  agg_power(ch->parent, powerstate_idle);
 }
 agg_unlock(ch->parent);
}
