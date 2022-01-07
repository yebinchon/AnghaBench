
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* objects; } ;
struct rev_info {TYPE_2__ pending; int repo; } ;
struct object {int flags; scalar_t__ type; } ;
struct commit {int dummy; } ;
struct TYPE_3__ {char* name; struct object* item; } ;


 scalar_t__ OBJ_COMMIT ;
 int UNINTERESTING ;
 struct object* deref_tag (int ,struct object*,int *,int ) ;
 int die (char*,...) ;
 struct commit* dwim_reverse_initial (struct rev_info*,char const**) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static struct commit *find_single_initial(struct rev_info *revs,
       const char **name_p)
{
 int i;
 struct commit *found = ((void*)0);
 const char *name = ((void*)0);





 for (i = 0; i < revs->pending.nr; i++) {
  struct object *obj = revs->pending.objects[i].item;
  if (!(obj->flags & UNINTERESTING))
   continue;
  obj = deref_tag(revs->repo, obj, ((void*)0), 0);
  if (obj->type != OBJ_COMMIT)
   die("Non commit %s?", revs->pending.objects[i].name);
  if (found)
   die("More than one commit to dig up from, %s and %s?",
       revs->pending.objects[i].name, name);
  found = (struct commit *) obj;
  name = revs->pending.objects[i].name;
 }

 if (!name)
  found = dwim_reverse_initial(revs, &name);
 if (!name)
  die("No commit to dig up from?");

 if (name_p)
  *name_p = xstrdup(name);
 return found;
}
