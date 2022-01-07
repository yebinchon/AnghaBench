
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;


 int SEEN ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int perform_reachability_traversal (struct rev_info*) ;
 int the_repository ;

__attribute__((used)) static int is_object_reachable(const struct object_id *oid,
          struct rev_info *revs)
{
 struct object *obj;

 perform_reachability_traversal(revs);

 obj = lookup_object(the_repository, oid);
 return obj && (obj->flags & SEEN);
}
