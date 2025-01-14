
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rev_info {int max_parents; int topo_order; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int recursive; } ;
struct diff_options {TYPE_1__ flags; } ;
struct commit_base {int dummy; } ;
struct TYPE_4__ {int flags; struct object_id oid; } ;
struct commit {TYPE_2__ object; } ;
struct base_tree_info {int nr_patch_id; struct object_id* patch_id; int alloc_patch_id; struct object_id base_commit; } ;


 int ALLOC_GROW (struct object_id*,int,int ) ;
 int UNINTERESTING ;
 int _ (char*) ;
 int add_pending_object (struct rev_info*,TYPE_2__*,char*) ;
 int clear_commit_base (struct commit_base*) ;
 int* commit_base_at (struct commit_base*,struct commit*) ;
 scalar_t__ commit_patch_id (struct commit*,struct diff_options*,struct object_id*,int ,int) ;
 int die (int ) ;
 int diff_setup_done (struct diff_options*) ;
 struct commit* get_revision (struct rev_info*) ;
 int init_commit_base (struct commit_base*) ;
 int oidcpy (struct object_id*,struct object_id*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int repo_diff_setup (int ,struct diff_options*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int the_repository ;

__attribute__((used)) static void prepare_bases(struct base_tree_info *bases,
     struct commit *base,
     struct commit **list,
     int total)
{
 struct commit *commit;
 struct rev_info revs;
 struct diff_options diffopt;
 struct commit_base commit_base;
 int i;

 if (!base)
  return;

 init_commit_base(&commit_base);
 repo_diff_setup(the_repository, &diffopt);
 diffopt.flags.recursive = 1;
 diff_setup_done(&diffopt);

 oidcpy(&bases->base_commit, &base->object.oid);

 repo_init_revisions(the_repository, &revs, ((void*)0));
 revs.max_parents = 1;
 revs.topo_order = 1;
 for (i = 0; i < total; i++) {
  list[i]->object.flags &= ~UNINTERESTING;
  add_pending_object(&revs, &list[i]->object, "rev_list");
  *commit_base_at(&commit_base, list[i]) = 1;
 }
 base->object.flags |= UNINTERESTING;
 add_pending_object(&revs, &base->object, "base");

 if (prepare_revision_walk(&revs))
  die(_("revision walk setup failed"));




 while ((commit = get_revision(&revs)) != ((void*)0)) {
  struct object_id oid;
  struct object_id *patch_id;
  if (*commit_base_at(&commit_base, commit))
   continue;
  if (commit_patch_id(commit, &diffopt, &oid, 0, 1))
   die(_("cannot get patch id"));
  ALLOC_GROW(bases->patch_id, bases->nr_patch_id + 1, bases->alloc_patch_id);
  patch_id = bases->patch_id + bases->nr_patch_id;
  oidcpy(patch_id, &oid);
  bases->nr_patch_id++;
 }
 clear_commit_base(&commit_base);
}
