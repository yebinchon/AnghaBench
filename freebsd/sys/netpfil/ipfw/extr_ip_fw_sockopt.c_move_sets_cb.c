
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct namedobj_instance {int dummy; } ;
struct named_object {scalar_t__ set; } ;
struct manage_sets_args {scalar_t__ new_set; scalar_t__ set; } ;



__attribute__((used)) static int
move_sets_cb(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
 struct manage_sets_args *args;

 args = (struct manage_sets_args *)arg;
 if (no->set == (uint8_t)args->set)
  no->set = args->new_set;
 return (0);
}
