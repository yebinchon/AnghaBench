
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct blame_scoreboard {int (* on_sanity_fail ) (struct blame_scoreboard*,int) ;struct blame_entry* ent; } ;
struct blame_entry {TYPE_3__* suspect; struct blame_entry* next; } ;
struct TYPE_6__ {scalar_t__ refcnt; char* path; TYPE_2__* commit; } ;
struct TYPE_4__ {int oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;


 int fprintf (int ,char*,char*,char*,scalar_t__) ;
 char* oid_to_hex (int *) ;
 int stderr ;
 int stub1 (struct blame_scoreboard*,int) ;

__attribute__((used)) static void sanity_check_refcnt(struct blame_scoreboard *sb)
{
 int baa = 0;
 struct blame_entry *ent;

 for (ent = sb->ent; ent; ent = ent->next) {

  if (ent->suspect->refcnt <= 0) {
   fprintf(stderr, "%s in %s has negative refcnt %d\n",
    ent->suspect->path,
    oid_to_hex(&ent->suspect->commit->object.oid),
    ent->suspect->refcnt);
   baa = 1;
  }
 }
 if (baa)
  sb->on_sanity_fail(sb, baa);
}
