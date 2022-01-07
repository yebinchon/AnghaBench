
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int nr; struct commit** list; } ;
struct write_commit_graph_context {int progress; TYPE_1__ commits; scalar_t__ report_progress; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {scalar_t__ generation; struct commit_list* parents; } ;


 scalar_t__ GENERATION_NUMBER_INFINITY ;
 scalar_t__ GENERATION_NUMBER_MAX ;
 scalar_t__ GENERATION_NUMBER_ZERO ;
 int _ (char*) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int display_progress (int ,int) ;
 int pop_commit (struct commit_list**) ;
 int start_progress (int ,int) ;
 int stop_progress (int *) ;

__attribute__((used)) static void compute_generation_numbers(struct write_commit_graph_context *ctx)
{
 int i;
 struct commit_list *list = ((void*)0);

 if (ctx->report_progress)
  ctx->progress = start_progress(
     _("Computing commit graph generation numbers"),
     ctx->commits.nr);
 for (i = 0; i < ctx->commits.nr; i++) {
  display_progress(ctx->progress, i + 1);
  if (ctx->commits.list[i]->generation != GENERATION_NUMBER_INFINITY &&
      ctx->commits.list[i]->generation != GENERATION_NUMBER_ZERO)
   continue;

  commit_list_insert(ctx->commits.list[i], &list);
  while (list) {
   struct commit *current = list->item;
   struct commit_list *parent;
   int all_parents_computed = 1;
   uint32_t max_generation = 0;

   for (parent = current->parents; parent; parent = parent->next) {
    if (parent->item->generation == GENERATION_NUMBER_INFINITY ||
        parent->item->generation == GENERATION_NUMBER_ZERO) {
     all_parents_computed = 0;
     commit_list_insert(parent->item, &list);
     break;
    } else if (parent->item->generation > max_generation) {
     max_generation = parent->item->generation;
    }
   }

   if (all_parents_computed) {
    current->generation = max_generation + 1;
    pop_commit(&list);

    if (current->generation > GENERATION_NUMBER_MAX)
     current->generation = GENERATION_NUMBER_MAX;
   }
  }
 }
 stop_progress(&ctx->progress);
}
