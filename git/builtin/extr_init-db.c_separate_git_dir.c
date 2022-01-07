
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mode; } ;


 scalar_t__ S_ISDIR (scalar_t__) ;
 scalar_t__ S_ISREG (scalar_t__) ;
 int _ (char*) ;
 int die (int ,int) ;
 int die_errno (int ,char const*,char const*) ;
 char* read_gitfile (char const*) ;
 scalar_t__ rename (char const*,char const*) ;
 int stat (char const*,struct stat*) ;
 int write_file (char const*,char*,char const*) ;

__attribute__((used)) static void separate_git_dir(const char *git_dir, const char *git_link)
{
 struct stat st;

 if (!stat(git_link, &st)) {
  const char *src;

  if (S_ISREG(st.st_mode))
   src = read_gitfile(git_link);
  else if (S_ISDIR(st.st_mode))
   src = git_link;
  else
   die(_("unable to handle file type %d"), (int)st.st_mode);

  if (rename(src, git_dir))
   die_errno(_("unable to move %s to %s"), src, git_dir);
 }

 write_file(git_link, "gitdir: %s", git_dir);
}
