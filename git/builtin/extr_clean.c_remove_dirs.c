
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int len; int buf; } ;
struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
struct TYPE_2__ {int string; } ;
typedef int DIR ;


 int REMOVE_DIR_KEEP_NESTED_GIT ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 scalar_t__ S_ISDIR (int ) ;
 char* _ (int ) ;
 int closedir (int *) ;
 int errno ;
 scalar_t__ is_dot_or_dotdot (int ) ;
 scalar_t__ is_nonbare_repository_dir (struct strbuf*) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int msg_remove ;
 int msg_skip_git_dir ;
 int msg_warn_lstat_failed ;
 int msg_warn_remove_failed ;
 int msg_would_remove ;
 int msg_would_skip_git_dir ;
 int * opendir (int ) ;
 int printf (char*,int ) ;
 int quote_path_relative (int ,char const*,struct strbuf*) ;
 struct dirent* readdir (int *) ;
 int rmdir (int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int unlink (int ) ;
 int warning_errno (char*,int ) ;

__attribute__((used)) static int remove_dirs(struct strbuf *path, const char *prefix, int force_flag,
  int dry_run, int quiet, int *dir_gone)
{
 DIR *dir;
 struct strbuf quoted = STRBUF_INIT;
 struct dirent *e;
 int res = 0, ret = 0, gone = 1, original_len = path->len, len;
 struct string_list dels = STRING_LIST_INIT_DUP;

 *dir_gone = 1;

 if ((force_flag & REMOVE_DIR_KEEP_NESTED_GIT) &&
     is_nonbare_repository_dir(path)) {
  if (!quiet) {
   quote_path_relative(path->buf, prefix, &quoted);
   printf(dry_run ? _(msg_would_skip_git_dir) : _(msg_skip_git_dir),
     quoted.buf);
  }

  *dir_gone = 0;
  goto out;
 }

 dir = opendir(path->buf);
 if (!dir) {

  res = dry_run ? 0 : rmdir(path->buf);
  if (res) {
   int saved_errno = errno;
   quote_path_relative(path->buf, prefix, &quoted);
   errno = saved_errno;
   warning_errno(_(msg_warn_remove_failed), quoted.buf);
   *dir_gone = 0;
  }
  ret = res;
  goto out;
 }

 strbuf_complete(path, '/');

 len = path->len;
 while ((e = readdir(dir)) != ((void*)0)) {
  struct stat st;
  if (is_dot_or_dotdot(e->d_name))
   continue;

  strbuf_setlen(path, len);
  strbuf_addstr(path, e->d_name);
  if (lstat(path->buf, &st))
   warning_errno(_(msg_warn_lstat_failed), path->buf);
  else if (S_ISDIR(st.st_mode)) {
   if (remove_dirs(path, prefix, force_flag, dry_run, quiet, &gone))
    ret = 1;
   if (gone) {
    quote_path_relative(path->buf, prefix, &quoted);
    string_list_append(&dels, quoted.buf);
   } else
    *dir_gone = 0;
   continue;
  } else {
   res = dry_run ? 0 : unlink(path->buf);
   if (!res) {
    quote_path_relative(path->buf, prefix, &quoted);
    string_list_append(&dels, quoted.buf);
   } else {
    int saved_errno = errno;
    quote_path_relative(path->buf, prefix, &quoted);
    errno = saved_errno;
    warning_errno(_(msg_warn_remove_failed), quoted.buf);
    *dir_gone = 0;
    ret = 1;
   }
   continue;
  }


  *dir_gone = 0;
  ret = 1;
  break;
 }
 closedir(dir);

 strbuf_setlen(path, original_len);

 if (*dir_gone) {
  res = dry_run ? 0 : rmdir(path->buf);
  if (!res)
   *dir_gone = 1;
  else {
   int saved_errno = errno;
   quote_path_relative(path->buf, prefix, &quoted);
   errno = saved_errno;
   warning_errno(_(msg_warn_remove_failed), quoted.buf);
   *dir_gone = 0;
   ret = 1;
  }
 }

 if (!*dir_gone && !quiet) {
  int i;
  for (i = 0; i < dels.nr; i++)
   printf(dry_run ? _(msg_would_remove) : _(msg_remove), dels.items[i].string);
 }
out:
 strbuf_release(&quoted);
 string_list_clear(&dels, 0);
 return ret;
}
