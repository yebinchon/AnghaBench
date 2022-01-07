
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* objects; } ;
struct rev_info {int max_parents; int prefix; TYPE_2__ pending; } ;
struct patch_ids {int dummy; } ;
struct object {unsigned int flags; int oid; } ;
struct commit {int dummy; } ;
struct TYPE_3__ {struct object* item; } ;


 unsigned int ADDED ;
 unsigned int SEEN ;
 unsigned int SHOWN ;
 unsigned int UNINTERESTING ;
 int _ (char*) ;
 int add_commit_patch_id (struct commit*,struct patch_ids*) ;
 int add_pending_object (struct rev_info*,struct object*,char*) ;
 int clear_commit_marks (struct commit*,unsigned int) ;
 int die (int ) ;
 struct commit* get_revision (struct rev_info*) ;
 int init_patch_ids (int ,struct patch_ids*) ;
 struct commit* lookup_commit_reference (int ,int *) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int repo_init_revisions (int ,struct rev_info*,int ) ;
 int the_repository ;

__attribute__((used)) static void get_patch_ids(struct rev_info *rev, struct patch_ids *ids)
{
 struct rev_info check_rev;
 struct commit *commit, *c1, *c2;
 struct object *o1, *o2;
 unsigned flags1, flags2;

 if (rev->pending.nr != 2)
  die(_("need exactly one range"));

 o1 = rev->pending.objects[0].item;
 o2 = rev->pending.objects[1].item;
 flags1 = o1->flags;
 flags2 = o2->flags;
 c1 = lookup_commit_reference(the_repository, &o1->oid);
 c2 = lookup_commit_reference(the_repository, &o2->oid);

 if ((flags1 & UNINTERESTING) == (flags2 & UNINTERESTING))
  die(_("not a range"));

 init_patch_ids(the_repository, ids);


 repo_init_revisions(the_repository, &check_rev, rev->prefix);
 check_rev.max_parents = 1;
 o1->flags ^= UNINTERESTING;
 o2->flags ^= UNINTERESTING;
 add_pending_object(&check_rev, o1, "o1");
 add_pending_object(&check_rev, o2, "o2");
 if (prepare_revision_walk(&check_rev))
  die(_("revision walk setup failed"));

 while ((commit = get_revision(&check_rev)) != ((void*)0)) {
  add_commit_patch_id(commit, ids);
 }


 clear_commit_marks(c1, SEEN | UNINTERESTING | SHOWN | ADDED);
 clear_commit_marks(c2, SEEN | UNINTERESTING | SHOWN | ADDED);
 o1->flags = flags1;
 o2->flags = flags2;
}
