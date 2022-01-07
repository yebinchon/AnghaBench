
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {int dummy; } ;


 int all_flags ;
 int clear_commit_marks (struct commit*,int ) ;
 int clear_commit_marks_many (int,struct commit**,int ) ;
 int commit_list_count (struct commit_list*) ;
 int commit_list_insert_by_date (struct commit*,struct commit_list**) ;
 int free (struct commit**) ;
 int free_commit_list (struct commit_list*) ;
 struct commit_list* merge_bases_many (struct repository*,struct commit*,int,struct commit**) ;
 int remove_redundant (struct repository*,struct commit**,int) ;
 struct commit** xcalloc (int,int) ;

__attribute__((used)) static struct commit_list *get_merge_bases_many_0(struct repository *r,
        struct commit *one,
        int n,
        struct commit **twos,
        int cleanup)
{
 struct commit_list *list;
 struct commit **rslt;
 struct commit_list *result;
 int cnt, i;

 result = merge_bases_many(r, one, n, twos);
 for (i = 0; i < n; i++) {
  if (one == twos[i])
   return result;
 }
 if (!result || !result->next) {
  if (cleanup) {
   clear_commit_marks(one, all_flags);
   clear_commit_marks_many(n, twos, all_flags);
  }
  return result;
 }


 cnt = commit_list_count(result);
 rslt = xcalloc(cnt, sizeof(*rslt));
 for (list = result, i = 0; list; list = list->next)
  rslt[i++] = list->item;
 free_commit_list(result);

 clear_commit_marks(one, all_flags);
 clear_commit_marks_many(n, twos, all_flags);

 cnt = remove_redundant(r, rslt, cnt);
 result = ((void*)0);
 for (i = 0; i < cnt; i++)
  commit_list_insert_by_date(rslt[i], &result);
 free(rslt);
 return result;
}
