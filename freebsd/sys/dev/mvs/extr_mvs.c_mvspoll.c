
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_intr_arg {int cause; int arg; } ;
struct mvs_channel {scalar_t__ resetting; scalar_t__ resetpolldiv; int dev; int reset_timer; } ;
struct cam_sim {int dummy; } ;


 int callout_pending (int *) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int mvs_ch_intr (struct mvs_intr_arg*) ;
 int mvs_reset_to (int ) ;

__attribute__((used)) static void
mvspoll(struct cam_sim *sim)
{
 struct mvs_channel *ch = (struct mvs_channel *)cam_sim_softc(sim);
 struct mvs_intr_arg arg;

 arg.arg = ch->dev;
 arg.cause = 2 | 4;
 mvs_ch_intr(&arg);
 if (ch->resetting != 0 &&
     (--ch->resetpolldiv <= 0 || !callout_pending(&ch->reset_timer))) {
  ch->resetpolldiv = 1000;
  mvs_reset_to(ch->dev);
 }
}
