
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {char* path; char* head_ref; scalar_t__ is_detached; int head_oid; scalar_t__ is_bare; } ;


 char* oid_to_hex (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void show_worktree_porcelain(struct worktree *wt)
{
 printf("worktree %s\n", wt->path);
 if (wt->is_bare)
  printf("bare\n");
 else {
  printf("HEAD %s\n", oid_to_hex(&wt->head_oid));
  if (wt->is_detached)
   printf("detached\n");
  else if (wt->head_ref)
   printf("branch %s\n", wt->head_ref);
 }
 printf("\n");
}
