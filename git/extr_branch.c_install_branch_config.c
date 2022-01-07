
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int BRANCH_CONFIG_VERBOSE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int advise (int ,char const*,char*,char const*) ;
 int error (int ) ;
 scalar_t__ git_config_set_gently (int ,char const*) ;
 int printf_ln (int ,char const*,char const*,...) ;
 int should_setup_rebase (char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strcmp (char const*,char const*) ;
 char* tracking_advice ;
 int warning (int ,char const*) ;

int install_branch_config(int flag, const char *local, const char *origin, const char *remote)
{
 const char *shortname = ((void*)0);
 struct strbuf key = STRBUF_INIT;
 int rebasing = should_setup_rebase(origin);

 if (skip_prefix(remote, "refs/heads/", &shortname)
     && !strcmp(local, shortname)
     && !origin) {
  warning(_("Not setting branch %s as its own upstream."),
   local);
  return 0;
 }

 strbuf_addf(&key, "branch.%s.remote", local);
 if (git_config_set_gently(key.buf, origin ? origin : ".") < 0)
  goto out_err;

 strbuf_reset(&key);
 strbuf_addf(&key, "branch.%s.merge", local);
 if (git_config_set_gently(key.buf, remote) < 0)
  goto out_err;

 if (rebasing) {
  strbuf_reset(&key);
  strbuf_addf(&key, "branch.%s.rebase", local);
  if (git_config_set_gently(key.buf, "true") < 0)
   goto out_err;
 }
 strbuf_release(&key);

 if (flag & BRANCH_CONFIG_VERBOSE) {
  if (shortname) {
   if (origin)
    printf_ln(rebasing ?
       _("Branch '%s' set up to track remote branch '%s' from '%s' by rebasing.") :
       _("Branch '%s' set up to track remote branch '%s' from '%s'."),
       local, shortname, origin);
   else
    printf_ln(rebasing ?
       _("Branch '%s' set up to track local branch '%s' by rebasing.") :
       _("Branch '%s' set up to track local branch '%s'."),
       local, shortname);
  } else {
   if (origin)
    printf_ln(rebasing ?
       _("Branch '%s' set up to track remote ref '%s' by rebasing.") :
       _("Branch '%s' set up to track remote ref '%s'."),
       local, remote);
   else
    printf_ln(rebasing ?
       _("Branch '%s' set up to track local ref '%s' by rebasing.") :
       _("Branch '%s' set up to track local ref '%s'."),
       local, remote);
  }
 }

 return 0;

out_err:
 strbuf_release(&key);
 error(_("Unable to write upstream branch configuration"));

 advise(_(tracking_advice),
        origin ? origin : "",
        origin ? "/" : "",
        shortname ? shortname : remote);

 return -1;
}
