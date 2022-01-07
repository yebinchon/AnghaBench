
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct stat {int st_mode; } ;
typedef int repo_version_string ;
typedef int junk ;


 int F_OK ;
 int GIT_REPO_VERSION ;
 scalar_t__ LOG_REFS_UNSET ;
 int R_OK ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISLNK (int) ;
 int S_IXUSR ;
 int TEST_FILEMODE ;
 int access (char*,int ) ;
 int adjust_shared_perm (int ) ;
 int chmod (char*,int) ;
 int close (int ) ;
 int copy_templates (char const*) ;
 scalar_t__ create_symref (char*,char*,int *) ;
 int die (char*,int ) ;
 int exit (int) ;
 int get_git_dir () ;
 char* get_git_work_tree () ;
 scalar_t__ get_shared_repository () ;
 int git_config (int ,int *) ;
 int git_config_clear () ;
 int git_config_set (char*,char const*) ;
 int git_default_config ;
 int git_init_db_config ;
 int git_path (char*) ;
 char* git_path_buf (struct strbuf*,char*) ;
 int * init_db_template_dir ;
 int init_is_bare_repository ;
 int init_shared_repository ;
 scalar_t__ is_bare_repository () ;
 int is_bare_repository_cfg ;
 scalar_t__ log_all_ref_updates ;
 int lstat (char*,struct stat*) ;
 scalar_t__ needs_work_tree_config (char const*,char const*) ;
 int probe_utf8_pathname_composition () ;
 int readlink (char*,char*,int) ;
 scalar_t__ refs_init_db (struct strbuf*) ;
 int reset_shared_repository () ;
 int safe_create_dir (int ,int) ;
 int set_shared_repository (int) ;
 int strbuf_release (struct strbuf*) ;
 int symlink (char*,char*) ;
 int unlink (char*) ;
 int xmkstemp (char*) ;
 int xsnprintf (char*,int,char*,int ) ;

__attribute__((used)) static int create_default_files(const char *template_path,
    const char *original_git_dir)
{
 struct stat st1;
 struct strbuf buf = STRBUF_INIT;
 char *path;
 char repo_version_string[10];
 char junk[2];
 int reinit;
 int filemode;
 struct strbuf err = STRBUF_INIT;


 init_db_template_dir = ((void*)0);
 git_config(git_init_db_config, ((void*)0));
 copy_templates(template_path);
 git_config_clear();
 reset_shared_repository();
 git_config(git_default_config, ((void*)0));





 is_bare_repository_cfg = init_is_bare_repository;
 if (init_shared_repository != -1)
  set_shared_repository(init_shared_repository);





 if (get_shared_repository()) {
  adjust_shared_perm(get_git_dir());
 }





 safe_create_dir(git_path("refs"), 1);
 adjust_shared_perm(git_path("refs"));

 if (refs_init_db(&err))
  die("failed to set up refs db: %s", err.buf);





 path = git_path_buf(&buf, "HEAD");
 reinit = (!access(path, R_OK)
    || readlink(path, junk, sizeof(junk)-1) != -1);
 if (!reinit) {
  if (create_symref("HEAD", "refs/heads/master", ((void*)0)) < 0)
   exit(1);
 }


 xsnprintf(repo_version_string, sizeof(repo_version_string),
    "%d", GIT_REPO_VERSION);
 git_config_set("core.repositoryformatversion", repo_version_string);


 path = git_path_buf(&buf, "config");
 filemode = TEST_FILEMODE;
 if (TEST_FILEMODE && !lstat(path, &st1)) {
  struct stat st2;
  filemode = (!chmod(path, st1.st_mode ^ S_IXUSR) &&
    !lstat(path, &st2) &&
    st1.st_mode != st2.st_mode &&
    !chmod(path, st1.st_mode));
  if (filemode && !reinit && (st1.st_mode & S_IXUSR))
   filemode = 0;
 }
 git_config_set("core.filemode", filemode ? "true" : "false");

 if (is_bare_repository())
  git_config_set("core.bare", "true");
 else {
  const char *work_tree = get_git_work_tree();
  git_config_set("core.bare", "false");

  if (log_all_ref_updates == LOG_REFS_UNSET)
   git_config_set("core.logallrefupdates", "true");
  if (needs_work_tree_config(original_git_dir, work_tree))
   git_config_set("core.worktree", work_tree);
 }

 if (!reinit) {

  path = git_path_buf(&buf, "tXXXXXX");
  if (!close(xmkstemp(path)) &&
      !unlink(path) &&
      !symlink("testing", path) &&
      !lstat(path, &st1) &&
      S_ISLNK(st1.st_mode))
   unlink(path);
  else
   git_config_set("core.symlinks", "false");


  path = git_path_buf(&buf, "CoNfIg");
  if (!access(path, F_OK))
   git_config_set("core.ignorecase", "true");
  probe_utf8_pathname_composition();
 }

 strbuf_release(&buf);
 return reinit;
}
