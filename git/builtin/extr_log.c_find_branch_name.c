
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int nr; TYPE_2__* rev; } ;
struct rev_info {TYPE_3__ cmdline; } ;
struct object_id {int dummy; } ;
struct TYPE_5__ {int flags; char* name; TYPE_1__* item; } ;
struct TYPE_4__ {struct object_id oid; } ;


 int UNINTERESTING ;
 scalar_t__ dwim_ref (char const*,int ,struct object_id*,char**) ;
 int free (char*) ;
 scalar_t__ oideq (struct object_id const*,struct object_id*) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;
 int strlen (char const*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *find_branch_name(struct rev_info *rev)
{
 int i, positive = -1;
 struct object_id branch_oid;
 const struct object_id *tip_oid;
 const char *ref, *v;
 char *full_ref, *branch = ((void*)0);

 for (i = 0; i < rev->cmdline.nr; i++) {
  if (rev->cmdline.rev[i].flags & UNINTERESTING)
   continue;
  if (positive < 0)
   positive = i;
  else
   return ((void*)0);
 }
 if (positive < 0)
  return ((void*)0);
 ref = rev->cmdline.rev[positive].name;
 tip_oid = &rev->cmdline.rev[positive].item->oid;
 if (dwim_ref(ref, strlen(ref), &branch_oid, &full_ref) &&
     skip_prefix(full_ref, "refs/heads/", &v) &&
     oideq(tip_oid, &branch_oid))
  branch = xstrdup(v);
 free(full_ref);
 return branch;
}
