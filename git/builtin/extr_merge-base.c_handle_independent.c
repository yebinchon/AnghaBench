
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
 char* oid_to_hex (int *) ;
 int printf (char*,char*) ;
 int reduce_heads_replace (struct commit_list**) ;

__attribute__((used)) static int handle_independent(int count, const char **args)
{
 struct commit_list *revs = ((void*)0), *rev;
 int i;

 for (i = count - 1; i >= 0; i--)
  commit_list_insert(get_commit_reference(args[i]), &revs);

 reduce_heads_replace(&revs);

 if (!revs)
  return 1;

 for (rev = revs; rev; rev = rev->next)
  printf("%s\n", oid_to_hex(&rev->item->object.oid));

 free_commit_list(revs);
 return 0;
}
