
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char const* buf; } ;
struct stat {int st_size; int st_mode; } ;


 int ARRAY_SIZE (char**) ;
 int O_RDONLY ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int close (int) ;
 scalar_t__ is_git_directory (char const*) ;
 int open (char const*,int ) ;
 char* read_gitfile (char const*) ;
 int read_in_full (int,char*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static const char *get_repo_path_1(struct strbuf *path, int *is_bundle)
{
 static char *suffix[] = { "/.git", "", ".git/.git", ".git" };
 static char *bundle_suffix[] = { ".bundle", "" };
 size_t baselen = path->len;
 struct stat st;
 int i;

 for (i = 0; i < ARRAY_SIZE(suffix); i++) {
  strbuf_setlen(path, baselen);
  strbuf_addstr(path, suffix[i]);
  if (stat(path->buf, &st))
   continue;
  if (S_ISDIR(st.st_mode) && is_git_directory(path->buf)) {
   *is_bundle = 0;
   return path->buf;
  } else if (S_ISREG(st.st_mode) && st.st_size > 8) {

   char signature[8];
   const char *dst;
   int len, fd = open(path->buf, O_RDONLY);
   if (fd < 0)
    continue;
   len = read_in_full(fd, signature, 8);
   close(fd);
   if (len != 8 || strncmp(signature, "gitdir: ", 8))
    continue;
   dst = read_gitfile(path->buf);
   if (dst) {
    *is_bundle = 0;
    return dst;
   }
  }
 }

 for (i = 0; i < ARRAY_SIZE(bundle_suffix); i++) {
  strbuf_setlen(path, baselen);
  strbuf_addstr(path, bundle_suffix[i]);
  if (!stat(path->buf, &st) && S_ISREG(st.st_mode)) {
   *is_bundle = 1;
   return path->buf;
  }
 }

 return ((void*)0);
}
