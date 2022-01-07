
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list_item {struct branch_info* util; int string; } ;
struct show_info {int width; int any_rebase; int list; struct ref_states* states; } ;
struct ref_states {TYPE_2__* remote; } ;
struct TYPE_3__ {int nr; } ;
struct branch_info {scalar_t__ rebase; int remote_name; TYPE_1__ merge; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ strcmp (int ,int ) ;
 struct string_list_item* string_list_insert (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int add_local_to_show_info(struct string_list_item *branch_item, void *cb_data)
{
 struct show_info *show_info = cb_data;
 struct ref_states *states = show_info->states;
 struct branch_info *branch_info = branch_item->util;
 struct string_list_item *item;
 int n;

 if (!branch_info->merge.nr || !branch_info->remote_name ||
     strcmp(states->remote->name, branch_info->remote_name))
  return 0;
 if ((n = strlen(branch_item->string)) > show_info->width)
  show_info->width = n;
 if (branch_info->rebase)
  show_info->any_rebase = 1;

 item = string_list_insert(show_info->list, branch_item->string);
 item->util = branch_info;

 return 0;
}
