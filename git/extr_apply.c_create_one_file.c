
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct apply_state {scalar_t__ cached; } ;
typedef int newpath ;


 scalar_t__ EACCES ;
 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int PATH_MAX ;
 int S_ISDIR (int ) ;
 int _ (char*) ;
 scalar_t__ errno ;
 int error_errno (int ,char*,unsigned int) ;
 unsigned int getpid () ;
 int lstat (char*,struct stat*) ;
 int mksnpath (char*,int,char*,char*,unsigned int) ;
 int rename (char*,char*) ;
 int rmdir (char*) ;
 scalar_t__ safe_create_leading_directories (char*) ;
 int try_create_file (struct apply_state*,char*,unsigned int,char const*,unsigned long) ;
 int unlink_or_warn (char*) ;

__attribute__((used)) static int create_one_file(struct apply_state *state,
      char *path,
      unsigned mode,
      const char *buf,
      unsigned long size)
{
 int res;

 if (state->cached)
  return 0;

 res = try_create_file(state, path, mode, buf, size);
 if (res < 0)
  return -1;
 if (!res)
  return 0;

 if (errno == ENOENT) {
  if (safe_create_leading_directories(path))
   return 0;
  res = try_create_file(state, path, mode, buf, size);
  if (res < 0)
   return -1;
  if (!res)
   return 0;
 }

 if (errno == EEXIST || errno == EACCES) {



  struct stat st;
  if (!lstat(path, &st) && (!S_ISDIR(st.st_mode) || !rmdir(path)))
   errno = EEXIST;
 }

 if (errno == EEXIST) {
  unsigned int nr = getpid();

  for (;;) {
   char newpath[PATH_MAX];
   mksnpath(newpath, sizeof(newpath), "%s~%u", path, nr);
   res = try_create_file(state, newpath, mode, buf, size);
   if (res < 0)
    return -1;
   if (!res) {
    if (!rename(newpath, path))
     return 0;
    unlink_or_warn(newpath);
    break;
   }
   if (errno != EEXIST)
    break;
   ++nr;
  }
 }
 return error_errno(_("unable to write file '%s' mode %o"),
      path, mode);
}
