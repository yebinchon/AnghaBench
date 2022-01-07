
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int boolean_t ;
struct TYPE_3__ {int instantaneous_dy; int instantaneous_dx; } ;
typedef TYPE_1__ atp_stroke_t ;


 scalar_t__ abs (int ) ;
 scalar_t__ atp_small_movement_threshold ;

__attribute__((used)) static boolean_t
atp_stroke_has_small_movement(const atp_stroke_t *strokep)
{
 return (((u_int)abs(strokep->instantaneous_dx) <=
   atp_small_movement_threshold) &&
  ((u_int)abs(strokep->instantaneous_dy) <=
   atp_small_movement_threshold));
}
