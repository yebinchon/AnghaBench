
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ f; scalar_t__ plugged; } ;


 int finish_bulk_checkin (TYPE_1__*) ;
 TYPE_1__ state ;

void unplug_bulk_checkin(void)
{
 state.plugged = 0;
 if (state.f)
  finish_bulk_checkin(&state);
}
