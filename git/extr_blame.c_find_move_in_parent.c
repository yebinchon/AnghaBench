
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct blame_scoreboard {scalar_t__ move_score; int num_read_blob; TYPE_1__* revs; } ;
struct blame_origin {struct blame_entry* suspects; } ;
struct blame_entry {struct blame_entry* next; scalar_t__ suspect; } ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_2__ mmfile_t ;
struct TYPE_5__ {int diffopt; } ;


 scalar_t__ blame_entry_score (struct blame_scoreboard*,struct blame_entry*) ;
 int decref_split (struct blame_entry*) ;
 int fill_origin_blob (int *,struct blame_origin*,TYPE_2__*,int *,int ) ;
 struct blame_entry** filter_small (struct blame_scoreboard*,struct blame_entry**,struct blame_entry**,scalar_t__) ;
 int find_copy_in_blob (struct blame_scoreboard*,struct blame_entry*,struct blame_origin*,struct blame_entry*,TYPE_2__*) ;
 struct blame_entry* reverse_blame (struct blame_entry*,int *) ;
 int split_blame (struct blame_entry***,struct blame_entry***,struct blame_entry*,struct blame_entry*) ;

__attribute__((used)) static void find_move_in_parent(struct blame_scoreboard *sb,
    struct blame_entry ***blamed,
    struct blame_entry **toosmall,
    struct blame_origin *target,
    struct blame_origin *parent)
{
 struct blame_entry *e, split[3];
 struct blame_entry *unblamed = target->suspects;
 struct blame_entry *leftover = ((void*)0);
 mmfile_t file_p;

 if (!unblamed)
  return;

 fill_origin_blob(&sb->revs->diffopt, parent, &file_p,
    &sb->num_read_blob, 0);
 if (!file_p.ptr)
  return;






 do {
  struct blame_entry **unblamedtail = &unblamed;
  struct blame_entry *next;
  for (e = unblamed; e; e = next) {
   next = e->next;
   find_copy_in_blob(sb, e, parent, split, &file_p);
   if (split[1].suspect &&
       sb->move_score < blame_entry_score(sb, &split[1])) {
    split_blame(blamed, &unblamedtail, split, e);
   } else {
    e->next = leftover;
    leftover = e;
   }
   decref_split(split);
  }
  *unblamedtail = ((void*)0);
  toosmall = filter_small(sb, toosmall, &unblamed, sb->move_score);
 } while (unblamed);
 target->suspects = reverse_blame(leftover, ((void*)0));
}
