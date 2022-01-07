
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct progress {int dummy; } ;


 int _ (char*) ;
 int expire ;
 int mark_reachable_objects (struct rev_info*,int,int ,struct progress*) ;
 scalar_t__ show_progress ;
 struct progress* start_delayed_progress (int ,int ) ;
 int stop_progress (struct progress**) ;

__attribute__((used)) static void perform_reachability_traversal(struct rev_info *revs)
{
 static int initialized;
 struct progress *progress = ((void*)0);

 if (initialized)
  return;

 if (show_progress)
  progress = start_delayed_progress(_("Checking connectivity"), 0);
 mark_reachable_objects(revs, 1, expire, progress);
 stop_progress(&progress);
 initialized = 1;
}
