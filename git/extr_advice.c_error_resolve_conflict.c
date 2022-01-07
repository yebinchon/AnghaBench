
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ advice_resolve_conflict ;
 int advise (int ) ;
 int error (int ,...) ;
 int strcmp (char const*,char*) ;

int error_resolve_conflict(const char *me)
{
 if (!strcmp(me, "cherry-pick"))
  error(_("Cherry-picking is not possible because you have unmerged files."));
 else if (!strcmp(me, "commit"))
  error(_("Committing is not possible because you have unmerged files."));
 else if (!strcmp(me, "merge"))
  error(_("Merging is not possible because you have unmerged files."));
 else if (!strcmp(me, "pull"))
  error(_("Pulling is not possible because you have unmerged files."));
 else if (!strcmp(me, "revert"))
  error(_("Reverting is not possible because you have unmerged files."));
 else
  error(_("It is not possible to %s because you have unmerged files."),
   me);

 if (advice_resolve_conflict)




  advise(_("Fix them up in the work tree, and then use 'git add/rm <file>'\n"
    "as appropriate to mark resolution and make a commit."));
 return -1;
}
