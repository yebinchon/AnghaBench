
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct progress {int dummy; } ;
struct TYPE_3__ {scalar_t__ nr; } ;


 int _ (char*) ;
 int display_progress (struct progress*,unsigned int) ;
 int object_array_pop (TYPE_1__*) ;
 TYPE_1__ pending ;
 scalar_t__ show_progress ;
 struct progress* start_delayed_progress (int ,int ) ;
 int stop_progress (struct progress**) ;
 int traverse_one_object (int ) ;

__attribute__((used)) static int traverse_reachable(void)
{
 struct progress *progress = ((void*)0);
 unsigned int nr = 0;
 int result = 0;
 if (show_progress)
  progress = start_delayed_progress(_("Checking connectivity"), 0);
 while (pending.nr) {
  result |= traverse_one_object(object_array_pop(&pending));
  display_progress(progress, ++nr);
 }
 stop_progress(&progress);
 return !!result;
}
