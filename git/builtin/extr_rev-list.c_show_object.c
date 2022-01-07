
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_list_info {int flags; } ;
struct object {int oid; } ;


 int REV_LIST_QUIET ;
 scalar_t__ arg_show_object_names ;
 int display_progress (int ,int ) ;
 scalar_t__ finish_object (struct object*,char const*,void*) ;
 char* oid_to_hex (int *) ;
 int printf (char*,char*) ;
 int progress ;
 int progress_counter ;
 int show_object_with_name (int ,struct object*,char const*) ;
 int stdout ;

__attribute__((used)) static void show_object(struct object *obj, const char *name, void *cb_data)
{
 struct rev_list_info *info = cb_data;
 if (finish_object(obj, name, cb_data))
  return;
 display_progress(progress, ++progress_counter);
 if (info->flags & REV_LIST_QUIET)
  return;
 if (arg_show_object_names)
  show_object_with_name(stdout, obj, name);
 else
  printf("%s\n", oid_to_hex(&obj->oid));
}
