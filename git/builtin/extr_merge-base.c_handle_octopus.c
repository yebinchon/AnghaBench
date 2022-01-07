
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int commit_list_insert (int ,struct commit_list**) ;
 int free_commit_list (struct commit_list*) ;
 int get_commit_reference (char const*) ;
 struct commit_list* get_octopus_merge_bases (struct commit_list*) ;
 char* oid_to_hex (int *) ;
 int printf (char*,char*) ;
 int reduce_heads_replace (struct commit_list**) ;

__attribute__((used)) static int handle_octopus(int count, const char **args, int show_all)
{
 struct commit_list *revs = ((void*)0);
 struct commit_list *result, *rev;
 int i;

 for (i = count - 1; i >= 0; i--)
  commit_list_insert(get_commit_reference(args[i]), &revs);

 result = get_octopus_merge_bases(revs);
 free_commit_list(revs);
 reduce_heads_replace(&result);

 if (!result)
  return 1;

 for (rev = result; rev; rev = rev->next) {
  printf("%s\n", oid_to_hex(&rev->item->object.oid));
  if (!show_all)
   break;
 }

 free_commit_list(result);
 return 0;
}
