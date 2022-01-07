
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int old_oid; struct ref* next; } ;
struct check_connected_options {int quiet; } ;


 struct check_connected_options CHECK_CONNECTED_INIT ;
 int check_connected (int ,struct ref**,struct check_connected_options*) ;
 scalar_t__ deepen ;
 int has_object_file (int *) ;
 int iterate_ref_map ;

__attribute__((used)) static int check_exist_and_connected(struct ref *ref_map)
{
 struct ref *rm = ref_map;
 struct check_connected_options opt = CHECK_CONNECTED_INIT;
 struct ref *r;
 if (deepen)
  return -1;





 for (r = rm; r; r = r->next) {
  if (!has_object_file(&r->old_oid))
   return -1;
 }

 opt.quiet = 1;
 return check_connected(iterate_ref_map, &rm, &opt);
}
