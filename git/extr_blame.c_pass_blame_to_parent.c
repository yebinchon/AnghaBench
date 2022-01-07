
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct blame_scoreboard {int xdl_opts; int num_get_patch; int num_read_blob; TYPE_1__* revs; } ;
struct blame_origin {TYPE_3__* commit; int suspects; } ;
struct blame_entry {int dummy; } ;
struct blame_chunk_cb_data {int ignore_diffs; struct blame_entry** dstq; scalar_t__ offset; int * srcq; struct blame_origin* target; struct blame_origin* parent; } ;
typedef int mmfile_t ;
struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;
struct TYPE_4__ {int diffopt; } ;


 int INT_MAX ;
 int blame_chunk (struct blame_entry***,int **,int ,scalar_t__,int ,int ,struct blame_origin*,struct blame_origin*,int ) ;
 int blame_chunk_cb ;
 int compare_blame_suspect ;
 int die (char*,int ,int ) ;
 scalar_t__ diff_hunks (int *,int *,int ,struct blame_chunk_cb_data*,int ) ;
 int fill_origin_blob (int *,struct blame_origin*,int *,int *,int) ;
 int get_next_blame ;
 struct blame_entry* llist_mergesort (struct blame_entry*,int ,int ,int ) ;
 int oid_to_hex (int *) ;
 int queue_blames (struct blame_scoreboard*,struct blame_origin*,struct blame_entry*) ;
 int set_next_blame ;

__attribute__((used)) static void pass_blame_to_parent(struct blame_scoreboard *sb,
     struct blame_origin *target,
     struct blame_origin *parent, int ignore_diffs)
{
 mmfile_t file_p, file_o;
 struct blame_chunk_cb_data d;
 struct blame_entry *newdest = ((void*)0);

 if (!target->suspects)
  return;

 d.parent = parent;
 d.target = target;
 d.offset = 0;
 d.ignore_diffs = ignore_diffs;
 d.dstq = &newdest; d.srcq = &target->suspects;

 fill_origin_blob(&sb->revs->diffopt, parent, &file_p,
    &sb->num_read_blob, ignore_diffs);
 fill_origin_blob(&sb->revs->diffopt, target, &file_o,
    &sb->num_read_blob, ignore_diffs);
 sb->num_get_patch++;

 if (diff_hunks(&file_p, &file_o, blame_chunk_cb, &d, sb->xdl_opts))
  die("unable to generate diff (%s -> %s)",
      oid_to_hex(&parent->commit->object.oid),
      oid_to_hex(&target->commit->object.oid));

 blame_chunk(&d.dstq, &d.srcq, INT_MAX, d.offset, INT_MAX, 0,
      parent, target, 0);
 *d.dstq = ((void*)0);
 if (ignore_diffs)
  newdest = llist_mergesort(newdest, get_next_blame,
       set_next_blame,
       compare_blame_suspect);
 queue_blames(sb, parent, newdest);

 return;
}
