
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_2__ {scalar_t__ x; scalar_t__ y; } ;


 scalar_t__ SCX_REG ;
 scalar_t__ SCY_REG ;
 TYPE_1__ camera_dest ;

UBYTE SceneCameraAtDest_b()
{
  return SCX_REG == camera_dest.x && SCY_REG == camera_dest.y;
}
