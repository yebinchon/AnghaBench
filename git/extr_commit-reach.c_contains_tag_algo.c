
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct contains_stack_entry {struct commit_list* parents; struct commit* commit; } ;
struct contains_stack {int nr; struct contains_stack_entry* contains_stack; int * member_2; int member_1; int member_0; } ;
struct contains_cache {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {scalar_t__ generation; } ;
typedef enum contains_result { ____Placeholder_contains_result } contains_result ;





 scalar_t__ GENERATION_NUMBER_INFINITY ;
 int* contains_cache_at (struct contains_cache*,struct commit*) ;
 int contains_test (struct commit*,struct commit_list const*,struct contains_cache*,scalar_t__) ;
 int free (struct contains_stack_entry*) ;
 int load_commit_graph_info (int ,struct commit*) ;
 int push_to_contains_stack (struct commit*,struct contains_stack*) ;
 int the_repository ;

__attribute__((used)) static enum contains_result contains_tag_algo(struct commit *candidate,
           const struct commit_list *want,
           struct contains_cache *cache)
{
 struct contains_stack contains_stack = { 0, 0, ((void*)0) };
 enum contains_result result;
 uint32_t cutoff = GENERATION_NUMBER_INFINITY;
 const struct commit_list *p;

 for (p = want; p; p = p->next) {
  struct commit *c = p->item;
  load_commit_graph_info(the_repository, c);
  if (c->generation < cutoff)
   cutoff = c->generation;
 }

 result = contains_test(candidate, want, cache, cutoff);
 if (result != 129)
  return result;

 push_to_contains_stack(candidate, &contains_stack);
 while (contains_stack.nr) {
  struct contains_stack_entry *entry = &contains_stack.contains_stack[contains_stack.nr - 1];
  struct commit *commit = entry->commit;
  struct commit_list *parents = entry->parents;

  if (!parents) {
   *contains_cache_at(cache, commit) = 130;
   contains_stack.nr--;
  }




  else switch (contains_test(parents->item, want, cache, cutoff)) {
  case 128:
   *contains_cache_at(cache, commit) = 128;
   contains_stack.nr--;
   break;
  case 130:
   entry->parents = parents->next;
   break;
  case 129:
   push_to_contains_stack(parents->item, &contains_stack);
   break;
  }
 }
 free(contains_stack.contains_stack);
 return contains_test(candidate, want, cache, cutoff);
}
