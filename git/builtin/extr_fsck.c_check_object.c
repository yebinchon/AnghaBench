
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int flags; } ;


 int REACHABLE ;
 int _ (char*) ;
 int check_reachable_object (struct object*) ;
 int check_unreachable_object (struct object*) ;
 int describe_object (struct object*) ;
 int fprintf_ln (int ,int ,int ) ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static void check_object(struct object *obj)
{
 if (verbose)
  fprintf_ln(stderr, _("Checking %s"), describe_object(obj));

 if (obj->flags & REACHABLE)
  check_reachable_object(obj);
 else
  check_unreachable_object(obj);
}
