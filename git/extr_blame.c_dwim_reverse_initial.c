
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* objects; } ;
struct rev_info {TYPE_2__ pending; int repo; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct commit {int object; } ;
struct TYPE_3__ {char* name; struct object* item; } ;


 scalar_t__ OBJ_COMMIT ;
 int RESOLVE_REF_READING ;
 int UNINTERESTING ;
 int add_pending_object (struct rev_info*,int *,char*) ;
 struct object* deref_tag (int ,struct object*,int *,int ) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id*,int) ;
 int resolve_ref_unsafe (char*,int ,struct object_id*,int *) ;

__attribute__((used)) static struct commit *dwim_reverse_initial(struct rev_info *revs,
        const char **name_p)
{





 struct object *obj;
 struct commit *head_commit;
 struct object_id head_oid;

 if (revs->pending.nr != 1)
  return ((void*)0);


 obj = revs->pending.objects[0].item;
 obj = deref_tag(revs->repo, obj, ((void*)0), 0);
 if (obj->type != OBJ_COMMIT)
  return ((void*)0);


 if (!resolve_ref_unsafe("HEAD", RESOLVE_REF_READING, &head_oid, ((void*)0)))
  return ((void*)0);
 head_commit = lookup_commit_reference_gently(revs->repo,
           &head_oid, 1);
 if (!head_commit)
  return ((void*)0);


 obj->flags |= UNINTERESTING;
 add_pending_object(revs, &head_commit->object, "HEAD");

 if (name_p)
  *name_p = revs->pending.objects[0].name;
 return (struct commit *)obj;
}
