
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct namedobj_instance {int dummy; } ;
struct named_object {void* set; int name; int refcnt; int ocnt; } ;
struct manage_sets_args {void* new_set; int set; } ;
typedef enum ipfw_sets_cmd { ____Placeholder_ipfw_sets_cmd } ipfw_sets_cmd ;



 int EBUSY ;
 int EEXIST ;
 int EINVAL ;





 int ipfw_objhash_foreach_type (struct namedobj_instance*,int ,struct manage_sets_args*,int ) ;
 struct named_object* ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;
 int * ipfw_objhash_lookup_name_type (struct namedobj_instance*,void*,int ,int ) ;
 int move_sets_cb ;
 int swap_sets_cb ;
 int test_sets_cb ;

int
ipfw_obj_manage_sets(struct namedobj_instance *ni, uint16_t type,
    uint16_t set, uint8_t new_set, enum ipfw_sets_cmd cmd)
{
 struct manage_sets_args args;
 struct named_object *no;

 args.set = set;
 args.new_set = new_set;
 switch (cmd) {
 case 130:
  return (ipfw_objhash_foreach_type(ni, swap_sets_cb,
      &args, type));
 case 129:
  return (ipfw_objhash_foreach_type(ni, test_sets_cb,
      &args, type));
 case 132:
  return (ipfw_objhash_foreach_type(ni, move_sets_cb,
      &args, type));
 case 133:





  no = ipfw_objhash_lookup_kidx(ni, set);
  if (new_set != 0)
   no->ocnt++;
  else
   no->ocnt = 0;
  return (0);
 case 128:

  no = ipfw_objhash_lookup_kidx(ni, set);
  if (no->ocnt != no->refcnt)
   return (EBUSY);
  if (ipfw_objhash_lookup_name_type(ni, new_set, type,
      no->name) != ((void*)0))
   return (EEXIST);
  return (0);
 case 131:

  no = ipfw_objhash_lookup_kidx(ni, set);
  no->set = new_set;
  return (0);
 }
 return (EINVAL);
}
