
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int dummy; } ;
struct named_object {scalar_t__ set; int name; } ;


 scalar_t__ strcmp (int ,int ) ;

int
ipfw_objhash_same_name(struct namedobj_instance *ni, struct named_object *a,
    struct named_object *b)
{

 if ((strcmp(a->name, b->name) == 0) && a->set == b->set)
  return (1);

 return (0);
}
