
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int max_age; } ;
struct TYPE_2__ {int flags; scalar_t__ parsed; } ;
struct commit {int date; TYPE_1__ object; int parents; } ;
struct blame_scoreboard {scalar_t__ debug; struct blame_entry* ent; int found_guilty_entry_data; int (* found_guilty_entry ) (struct blame_entry*,int ) ;int show_root; scalar_t__ reverse; int commits; struct rev_info* revs; } ;
struct blame_origin {int guilty; struct blame_entry* suspects; struct commit* commit; struct blame_origin* next; } ;
struct blame_entry {struct blame_entry* next; } ;


 int UNINTERESTING ;
 int assert (int) ;
 int blame_origin_decref (struct blame_origin*) ;
 int blame_origin_incref (struct blame_origin*) ;
 struct blame_origin* get_blame_suspects (struct commit*) ;
 int mark_parents_uninteresting (struct commit*) ;
 int parse_commit (struct commit*) ;
 int pass_blame (struct blame_scoreboard*,struct blame_origin*,int) ;
 struct commit* prio_queue_get (int *) ;
 int sanity_check_refcnt (struct blame_scoreboard*) ;
 int stub1 (struct blame_entry*,int ) ;

void assign_blame(struct blame_scoreboard *sb, int opt)
{
 struct rev_info *revs = sb->revs;
 struct commit *commit = prio_queue_get(&sb->commits);

 while (commit) {
  struct blame_entry *ent;
  struct blame_origin *suspect = get_blame_suspects(commit);


  while (suspect && !suspect->suspects)
   suspect = suspect->next;

  if (!suspect) {
   commit = prio_queue_get(&sb->commits);
   continue;
  }

  assert(commit == suspect->commit);





  blame_origin_incref(suspect);
  parse_commit(commit);
  if (sb->reverse ||
      (!(commit->object.flags & UNINTERESTING) &&
       !(revs->max_age != -1 && commit->date < revs->max_age)))
   pass_blame(sb, suspect, opt);
  else {
   commit->object.flags |= UNINTERESTING;
   if (commit->object.parsed)
    mark_parents_uninteresting(commit);
  }

  if (!commit->parents && !sb->show_root)
   commit->object.flags |= UNINTERESTING;


  ent = suspect->suspects;
  if (ent) {
   suspect->guilty = 1;
   for (;;) {
    struct blame_entry *next = ent->next;
    if (sb->found_guilty_entry)
     sb->found_guilty_entry(ent, sb->found_guilty_entry_data);
    if (next) {
     ent = next;
     continue;
    }
    ent->next = sb->ent;
    sb->ent = suspect->suspects;
    suspect->suspects = ((void*)0);
    break;
   }
  }
  blame_origin_decref(suspect);

  if (sb->debug)
   sanity_check_refcnt(sb);
 }
}
