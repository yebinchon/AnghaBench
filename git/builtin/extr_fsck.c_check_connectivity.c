
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int _ (char*) ;
 int check_object (struct object*) ;
 scalar_t__ connectivity_only ;
 int for_each_loose_object (int ,int *,int ) ;
 int for_each_packed_object (int ,int *,int ) ;
 int fprintf_ln (int ,int ,int) ;
 struct object* get_indexed_object (int) ;
 int get_max_object_index () ;
 int mark_loose_unreachable_referents ;
 int mark_packed_unreachable_referents ;
 scalar_t__ show_dangling ;
 int stderr ;
 int traverse_reachable () ;
 scalar_t__ verbose ;
 scalar_t__ write_lost_and_found ;

__attribute__((used)) static void check_connectivity(void)
{
 int i, max;


 traverse_reachable();






 if (connectivity_only && (show_dangling || write_lost_and_found)) {
  for_each_loose_object(mark_loose_unreachable_referents, ((void*)0), 0);
  for_each_packed_object(mark_packed_unreachable_referents, ((void*)0), 0);
 }


 max = get_max_object_index();
 if (verbose)
  fprintf_ln(stderr, _("Checking connectivity (%d objects)"), max);

 for (i = 0; i < max; i++) {
  struct object *obj = get_indexed_object(i);

  if (obj)
   check_object(obj);
 }
}
