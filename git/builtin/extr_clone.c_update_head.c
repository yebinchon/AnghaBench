
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref {int old_oid; int name; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int REF_NO_DEREF ;
 int UPDATE_REFS_DIE_ON_ERR ;
 int _ (char*) ;
 scalar_t__ create_symref (char*,int ,int *) ;
 int die (int ) ;
 int install_branch_config (int ,char const*,int ,int ) ;
 struct commit* lookup_commit_reference (int ,int *) ;
 int option_bare ;
 int option_origin ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;
 int the_repository ;
 int update_ref (char const*,char*,int *,int *,int ,int ) ;

__attribute__((used)) static void update_head(const struct ref *our, const struct ref *remote,
   const char *msg)
{
 const char *head;
 if (our && skip_prefix(our->name, "refs/heads/", &head)) {

  if (create_symref("HEAD", our->name, ((void*)0)) < 0)
   die(_("unable to update HEAD"));
  if (!option_bare) {
   update_ref(msg, "HEAD", &our->old_oid, ((void*)0), 0,
       UPDATE_REFS_DIE_ON_ERR);
   install_branch_config(0, head, option_origin, our->name);
  }
 } else if (our) {
  struct commit *c = lookup_commit_reference(the_repository,
          &our->old_oid);

  update_ref(msg, "HEAD", &c->object.oid, ((void*)0), REF_NO_DEREF,
      UPDATE_REFS_DIE_ON_ERR);
 } else if (remote) {





  update_ref(msg, "HEAD", &remote->old_oid, ((void*)0), REF_NO_DEREF,
      UPDATE_REFS_DIE_ON_ERR);
 }
}
