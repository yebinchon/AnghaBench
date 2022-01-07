
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct remote {int name; } ;
struct branch {int merge_nr; TYPE_1__** merge; int refname; int name; int remote_name; } ;
struct TYPE_2__ {int src; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,int ,...) ;
 int die_push_simple (struct branch*,struct remote*) ;
 char* message_detached_head_die ;
 int refspec_append (int *,int ) ;
 int rs ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void setup_push_upstream(struct remote *remote, struct branch *branch,
    int triangular, int simple)
{
 struct strbuf refspec = STRBUF_INIT;

 if (!branch)
  die(_(message_detached_head_die), remote->name);
 if (!branch->merge_nr || !branch->merge || !branch->remote_name)
  die(_("The current branch %s has no upstream branch.\n"
      "To push the current branch and set the remote as upstream, use\n"
      "\n"
      "    git push --set-upstream %s %s\n"),
      branch->name,
      remote->name,
      branch->name);
 if (branch->merge_nr != 1)
  die(_("The current branch %s has multiple upstream branches, "
      "refusing to push."), branch->name);
 if (triangular)
  die(_("You are pushing to remote '%s', which is not the upstream of\n"
        "your current branch '%s', without telling me what to push\n"
        "to update which remote branch."),
      remote->name, branch->name);

 if (simple) {

  if (strcmp(branch->refname, branch->merge[0]->src))
   die_push_simple(branch, remote);
 }

 strbuf_addf(&refspec, "%s:%s", branch->refname, branch->merge[0]->src);
 refspec_append(&rs, refspec.buf);
}
