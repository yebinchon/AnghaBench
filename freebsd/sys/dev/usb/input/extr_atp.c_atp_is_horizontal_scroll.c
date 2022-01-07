
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_3__ {int cum_movement_x; int cum_movement_y; } ;
typedef TYPE_1__ atp_stroke_t ;


 int abs (int) ;
 int atp_slide_min_movement ;

__attribute__((used)) static boolean_t
atp_is_horizontal_scroll(const atp_stroke_t *strokep)
{
 if (abs(strokep->cum_movement_x) < atp_slide_min_movement)
  return (0);
 if (strokep->cum_movement_y == 0)
  return (1);
 return (abs(strokep->cum_movement_x / strokep->cum_movement_y) >= 4);
}
