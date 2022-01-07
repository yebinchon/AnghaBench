
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct namedobj_instance {int dummy; } ;
struct named_object {scalar_t__ set; int name; int etlv; } ;
struct manage_sets_args {int new_set; scalar_t__ set; } ;


 int EEXIST ;
 int * ipfw_objhash_lookup_name_type (struct namedobj_instance*,int ,int ,int ) ;

__attribute__((used)) static int
test_sets_cb(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
 struct manage_sets_args *args;

 args = (struct manage_sets_args *)arg;
 if (no->set != (uint8_t)args->set)
  return (0);
 if (ipfw_objhash_lookup_name_type(ni, args->new_set,
     no->etlv, no->name) != ((void*)0))
  return (EEXIST);
 return (0);
}
