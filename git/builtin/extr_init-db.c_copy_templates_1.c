
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;
struct stat {int st_mode; int st_size; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 scalar_t__ ENOENT ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int _ (char*) ;
 int closedir (int *) ;
 scalar_t__ copy_file (int ,int ,int ) ;
 int die_errno (int ,int ,...) ;
 scalar_t__ errno ;
 int error (int ,int ) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 int safe_create_dir (int ,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 scalar_t__ strbuf_readlink (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 scalar_t__ symlink (int ,int ) ;

__attribute__((used)) static void copy_templates_1(struct strbuf *path, struct strbuf *template_path,
        DIR *dir)
{
 size_t path_baselen = path->len;
 size_t template_baselen = template_path->len;
 struct dirent *de;
 safe_create_dir(path->buf, 1);
 while ((de = readdir(dir)) != ((void*)0)) {
  struct stat st_git, st_template;
  int exists = 0;

  strbuf_setlen(path, path_baselen);
  strbuf_setlen(template_path, template_baselen);

  if (de->d_name[0] == '.')
   continue;
  strbuf_addstr(path, de->d_name);
  strbuf_addstr(template_path, de->d_name);
  if (lstat(path->buf, &st_git)) {
   if (errno != ENOENT)
    die_errno(_("cannot stat '%s'"), path->buf);
  }
  else
   exists = 1;

  if (lstat(template_path->buf, &st_template))
   die_errno(_("cannot stat template '%s'"), template_path->buf);

  if (S_ISDIR(st_template.st_mode)) {
   DIR *subdir = opendir(template_path->buf);
   if (!subdir)
    die_errno(_("cannot opendir '%s'"), template_path->buf);
   strbuf_addch(path, '/');
   strbuf_addch(template_path, '/');
   copy_templates_1(path, template_path, subdir);
   closedir(subdir);
  }
  else if (exists)
   continue;
  else if (S_ISLNK(st_template.st_mode)) {
   struct strbuf lnk = STRBUF_INIT;
   if (strbuf_readlink(&lnk, template_path->buf,
         st_template.st_size) < 0)
    die_errno(_("cannot readlink '%s'"), template_path->buf);
   if (symlink(lnk.buf, path->buf))
    die_errno(_("cannot symlink '%s' '%s'"),
       lnk.buf, path->buf);
   strbuf_release(&lnk);
  }
  else if (S_ISREG(st_template.st_mode)) {
   if (copy_file(path->buf, template_path->buf, st_template.st_mode))
    die_errno(_("cannot copy '%s' to '%s'"),
       template_path->buf, path->buf);
  }
  else
   error(_("ignoring template %s"), template_path->buf);
 }
}
