
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int F_OK ;
 int RUN_COMMAND_NO_STDIN ;
 int RUN_GIT_CMD ;
 int _ (char*) ;
 int access (char*,int ) ;
 int die (int ) ;
 int die_errno (int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* git_pathdup (char*) ;
 scalar_t__ run_command_v_opt (char const**,int) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void dissociate_from_references(void)
{
 static const char* argv[] = { "repack", "-a", "-d", ((void*)0) };
 char *alternates = git_pathdup("objects/info/alternates");

 if (!access(alternates, F_OK)) {
  if (run_command_v_opt(argv, RUN_GIT_CMD|RUN_COMMAND_NO_STDIN))
   die(_("cannot repack to clean up"));
  if (unlink(alternates) && errno != ENOENT)
   die_errno(_("cannot unlink temporary alternates file"));
 }
 free(alternates);
}
