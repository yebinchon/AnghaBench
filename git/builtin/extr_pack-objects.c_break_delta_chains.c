
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct object_entry {scalar_t__ dfs_state; int depth; } ;


 int BUG (char*,scalar_t__) ;
 struct object_entry* DELTA (struct object_entry*) ;
 scalar_t__ DFS_ACTIVE ;
 scalar_t__ DFS_DONE ;
 scalar_t__ DFS_NONE ;
 int depth ;
 int drop_reused_delta (struct object_entry*) ;

__attribute__((used)) static void break_delta_chains(struct object_entry *entry)
{






 uint32_t total_depth;
 struct object_entry *cur, *next;

 for (cur = entry, total_depth = 0;
      cur;
      cur = DELTA(cur), total_depth++) {
  if (cur->dfs_state == DFS_DONE) {





   total_depth += cur->depth;
   break;
  }






  if (cur->dfs_state != DFS_NONE)
   BUG("confusing delta dfs state in first pass: %d",
       cur->dfs_state);






  if (!DELTA(cur)) {
   cur->dfs_state = DFS_DONE;
   break;
  }
  cur->dfs_state = DFS_ACTIVE;
  if (DELTA(cur)->dfs_state == DFS_ACTIVE) {
   drop_reused_delta(cur);
   cur->dfs_state = DFS_DONE;
   break;
  }
 }
 for (cur = entry; cur; cur = next) {
  next = DELTA(cur);







  if (cur->dfs_state == DFS_DONE)
   break;
  else if (cur->dfs_state != DFS_ACTIVE)
   BUG("confusing delta dfs state in second pass: %d",
       cur->dfs_state);
  cur->depth = (total_depth--) % (depth + 1);
  if (!cur->depth)
   drop_reused_delta(cur);

  cur->dfs_state = DFS_DONE;
 }
}
