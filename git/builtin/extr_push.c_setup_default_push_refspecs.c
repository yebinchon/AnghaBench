
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;
struct branch {int dummy; } ;
 int _ (char*) ;
 struct branch* branch_get (int *) ;
 int die (int ) ;
 int is_workflow_triangular (struct remote*) ;
 int push_default ;
 int refspec_append (int *,char*) ;
 int rs ;
 int setup_push_current (struct remote*,struct branch*) ;
 int setup_push_upstream (struct remote*,struct branch*,int,int) ;

__attribute__((used)) static void setup_default_push_refspecs(struct remote *remote)
{
 struct branch *branch = branch_get(((void*)0));
 int triangular = is_workflow_triangular(remote);

 switch (push_default) {
 default:
 case 132:
  refspec_append(&rs, ":");
  break;

 case 129:
 case 130:
  if (triangular)
   setup_push_current(remote, branch);
  else
   setup_push_upstream(remote, branch, triangular, 1);
  break;

 case 128:
  setup_push_upstream(remote, branch, triangular, 0);
  break;

 case 133:
  setup_push_current(remote, branch);
  break;

 case 131:
  die(_("You didn't specify any refspecs to push, and "
      "push.default is \"nothing\"."));
  break;
 }
}
