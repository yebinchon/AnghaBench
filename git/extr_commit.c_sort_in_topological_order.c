
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_queue {struct author_date_slab* cb_data; int * compare; } ;
struct indegree_slab {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct author_date_slab {int dummy; } ;
typedef int queue ;
typedef enum rev_sort_order { ____Placeholder_rev_sort_order } rev_sort_order ;
struct TYPE_2__ {struct commit_list* next; } ;




 int REV_SORT_IN_GRAPH_ORDER ;
 int clear_author_date_slab (struct author_date_slab*) ;
 int clear_indegree_slab (struct indegree_slab*) ;
 int clear_prio_queue (struct prio_queue*) ;
 TYPE_1__* commit_list_insert (struct commit*,struct commit_list**) ;
 int * compare_commits_by_author_date ;
 int * compare_commits_by_commit_date ;
 int free_commit_list (struct commit_list*) ;
 int* indegree_slab_at (struct indegree_slab*,struct commit*) ;
 int init_author_date_slab (struct author_date_slab*) ;
 int init_indegree_slab (struct indegree_slab*) ;
 int memset (struct prio_queue*,char,int) ;
 struct commit* prio_queue_get (struct prio_queue*) ;
 int prio_queue_put (struct prio_queue*,struct commit*) ;
 int prio_queue_reverse (struct prio_queue*) ;
 int record_author_date (struct author_date_slab*,struct commit*) ;

void sort_in_topological_order(struct commit_list **list, enum rev_sort_order sort_order)
{
 struct commit_list *next, *orig = *list;
 struct commit_list **pptr;
 struct indegree_slab indegree;
 struct prio_queue queue;
 struct commit *commit;
 struct author_date_slab author_date;

 if (!orig)
  return;
 *list = ((void*)0);

 init_indegree_slab(&indegree);
 memset(&queue, '\0', sizeof(queue));

 switch (sort_order) {
 default:
  queue.compare = ((void*)0);
  break;
 case 128:
  queue.compare = compare_commits_by_commit_date;
  break;
 case 129:
  init_author_date_slab(&author_date);
  queue.compare = compare_commits_by_author_date;
  queue.cb_data = &author_date;
  break;
 }


 for (next = orig; next; next = next->next) {
  struct commit *commit = next->item;
  *(indegree_slab_at(&indegree, commit)) = 1;

  if (sort_order == 129)
   record_author_date(&author_date, commit);
 }


 for (next = orig; next; next = next->next) {
  struct commit_list *parents = next->item->parents;
  while (parents) {
   struct commit *parent = parents->item;
   int *pi = indegree_slab_at(&indegree, parent);

   if (*pi)
    (*pi)++;
   parents = parents->next;
  }
 }
 for (next = orig; next; next = next->next) {
  struct commit *commit = next->item;

  if (*(indegree_slab_at(&indegree, commit)) == 1)
   prio_queue_put(&queue, commit);
 }





 if (sort_order == REV_SORT_IN_GRAPH_ORDER)
  prio_queue_reverse(&queue);


 free_commit_list(orig);

 pptr = list;
 *list = ((void*)0);
 while ((commit = prio_queue_get(&queue)) != ((void*)0)) {
  struct commit_list *parents;

  for (parents = commit->parents; parents ; parents = parents->next) {
   struct commit *parent = parents->item;
   int *pi = indegree_slab_at(&indegree, parent);

   if (!*pi)
    continue;






   if (--(*pi) == 1)
    prio_queue_put(&queue, parent);
  }




  *(indegree_slab_at(&indegree, commit)) = 0;

  pptr = &commit_list_insert(commit, pptr)->next;
 }

 clear_indegree_slab(&indegree);
 clear_prio_queue(&queue);
 if (sort_order == 129)
  clear_author_date_slab(&author_date);
}
