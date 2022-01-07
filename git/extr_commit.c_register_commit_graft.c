
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_2__* parsed_objects; } ;
struct TYPE_3__ {int hash; } ;
struct commit_graft {TYPE_1__ oid; } ;
struct TYPE_4__ {int grafts_nr; struct commit_graft** grafts; int grafts_alloc; } ;


 int ALLOC_GROW (struct commit_graft**,int,int ) ;
 int commit_graft_pos (struct repository*,int ) ;
 int free (struct commit_graft*) ;
 int memmove (struct commit_graft**,struct commit_graft**,int) ;

int register_commit_graft(struct repository *r, struct commit_graft *graft,
     int ignore_dups)
{
 int pos = commit_graft_pos(r, graft->oid.hash);

 if (0 <= pos) {
  if (ignore_dups)
   free(graft);
  else {
   free(r->parsed_objects->grafts[pos]);
   r->parsed_objects->grafts[pos] = graft;
  }
  return 1;
 }
 pos = -pos - 1;
 ALLOC_GROW(r->parsed_objects->grafts,
     r->parsed_objects->grafts_nr + 1,
     r->parsed_objects->grafts_alloc);
 r->parsed_objects->grafts_nr++;
 if (pos < r->parsed_objects->grafts_nr)
  memmove(r->parsed_objects->grafts + pos + 1,
   r->parsed_objects->grafts + pos,
   (r->parsed_objects->grafts_nr - pos - 1) *
   sizeof(*r->parsed_objects->grafts));
 r->parsed_objects->grafts[pos] = graft;
 return 0;
}
