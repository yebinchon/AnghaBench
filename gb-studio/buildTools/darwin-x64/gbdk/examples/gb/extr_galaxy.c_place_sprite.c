
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ h; } ;
struct TYPE_8__ {TYPE_1__ b; } ;
struct TYPE_6__ {int h; } ;
struct TYPE_7__ {TYPE_2__ b; } ;


 int move_sprite (int,scalar_t__,int ) ;
 TYPE_4__ sposx ;
 TYPE_3__ sposy ;

void place_sprite()
{
  move_sprite(0, sposx.b.h, sposy.b.h);
  move_sprite(1, sposx.b.h+8, sposy.b.h);
}
