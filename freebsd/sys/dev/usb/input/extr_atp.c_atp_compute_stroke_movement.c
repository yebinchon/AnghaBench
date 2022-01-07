
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_5__ {int movement_dx; int instantaneous_dx; int movement_dy; int instantaneous_dy; int cum_movement_x; int cum_movement_y; scalar_t__ pending_dy; scalar_t__ pending_dx; } ;
typedef TYPE_1__ atp_stroke_t ;


 scalar_t__ ATP_FAST_MOVEMENT_TRESHOLD ;
 scalar_t__ abs (int) ;
 scalar_t__ atp_mickeys_scale_factor ;
 scalar_t__ atp_stroke_has_small_movement (TYPE_1__*) ;
 int atp_update_pending_mickeys (TYPE_1__*) ;

__attribute__((used)) static boolean_t
atp_compute_stroke_movement(atp_stroke_t *strokep)
{






 if (atp_stroke_has_small_movement(strokep))
  atp_update_pending_mickeys(strokep);
 else {

  strokep->pending_dx = 0;
  strokep->pending_dy = 0;
 }


 strokep->movement_dx = (strokep->instantaneous_dx) /
     (int)atp_mickeys_scale_factor;
 strokep->movement_dy = (strokep->instantaneous_dy) /
     (int)atp_mickeys_scale_factor;

 if ((abs(strokep->instantaneous_dx) >= ATP_FAST_MOVEMENT_TRESHOLD) ||
     (abs(strokep->instantaneous_dy) >= ATP_FAST_MOVEMENT_TRESHOLD)) {
  strokep->movement_dx <<= 1;
  strokep->movement_dy <<= 1;
 }

 strokep->cum_movement_x += strokep->movement_dx;
 strokep->cum_movement_y += strokep->movement_dy;

 return ((strokep->movement_dx != 0) || (strokep->movement_dy != 0));
}
