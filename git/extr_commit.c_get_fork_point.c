
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rev_collect {int initial; int nr; TYPE_2__** commit; } ;
struct object_id {int dummy; } ;
struct commit_list {struct commit* item; scalar_t__ next; } ;
struct TYPE_3__ {int flags; } ;
struct commit {TYPE_1__ object; } ;
typedef int revs ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int TMP_MARK ;
 int add_one_commit (struct object_id*,struct rev_collect*) ;
 int collect_one_reflog_ent ;
 int for_each_reflog_ent (char const*,int ,struct rev_collect*) ;
 int free_commit_list (struct commit_list*) ;
 struct commit_list* get_merge_bases_many (struct commit*,int,TYPE_2__**) ;
 int get_oid (char const*,struct object_id*) ;
 int memset (struct rev_collect*,int ,int) ;

struct commit *get_fork_point(const char *refname, struct commit *commit)
{
 struct object_id oid;
 struct rev_collect revs;
 struct commit_list *bases;
 int i;
 struct commit *ret = ((void*)0);

 memset(&revs, 0, sizeof(revs));
 revs.initial = 1;
 for_each_reflog_ent(refname, collect_one_reflog_ent, &revs);

 if (!revs.nr && !get_oid(refname, &oid))
  add_one_commit(&oid, &revs);

 for (i = 0; i < revs.nr; i++)
  revs.commit[i]->object.flags &= ~TMP_MARK;

 bases = get_merge_bases_many(commit, revs.nr, revs.commit);





 if (!bases || bases->next)
  goto cleanup_return;


 for (i = 0; i < revs.nr; i++)
  if (&bases->item->object == &revs.commit[i]->object)
   break;
 if (revs.nr <= i)
  goto cleanup_return;

 ret = bases->item;

cleanup_return:
 free_commit_list(bases);
 return ret;
}
