
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct object {int flags; int oid; } ;
struct commit {struct object object; } ;


 int ALL_REV_FLAGS ;
 int UNINTERESTING ;
 int _ (char*) ;
 int add_pending_object (struct rev_info*,struct object*,int ) ;
 int add_pending_oid (struct rev_info*,char*,int *,int) ;
 int add_pending_uninteresting_ref ;
 int clear_commit_marks_all (int ) ;
 int describe_detached_head (int ,struct commit*) ;
 int die (int ) ;
 int for_each_ref (int ,struct rev_info*) ;
 int oid_to_hex (int *) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int suggest_reattach (struct commit*,struct rev_info*) ;
 int the_repository ;

__attribute__((used)) static void orphaned_commit_warning(struct commit *old_commit, struct commit *new_commit)
{
 struct rev_info revs;
 struct object *object = &old_commit->object;

 repo_init_revisions(the_repository, &revs, ((void*)0));
 setup_revisions(0, ((void*)0), &revs, ((void*)0));

 object->flags &= ~UNINTERESTING;
 add_pending_object(&revs, object, oid_to_hex(&object->oid));

 for_each_ref(add_pending_uninteresting_ref, &revs);
 if (new_commit)
  add_pending_oid(&revs, "HEAD",
    &new_commit->object.oid,
    UNINTERESTING);

 if (prepare_revision_walk(&revs))
  die(_("internal error in revision walk"));
 if (!(old_commit->object.flags & UNINTERESTING))
  suggest_reattach(old_commit, &revs);
 else
  describe_detached_head(_("Previous HEAD position was"), old_commit);


 clear_commit_marks_all(ALL_REV_FLAGS);
}
