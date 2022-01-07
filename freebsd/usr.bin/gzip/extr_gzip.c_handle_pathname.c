
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ziplen; char* zipped; } ;


 scalar_t__ ENOENT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ cflag ;
 scalar_t__ dflag ;
 scalar_t__ errno ;
 scalar_t__ fflag ;
 int free (char*) ;
 int handle_dir (char*) ;
 int handle_file (char*,struct stat*) ;
 int handle_stdin () ;
 int handle_stdout () ;
 scalar_t__ lstat (char*,struct stat*) ;
 char* malloc (int) ;
 int maybe_err (char*) ;
 int maybe_warn (char*,char*) ;
 int maybe_warnx (char*,char*) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ rflag ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char*) ;
 TYPE_1__* suffixes ;

__attribute__((used)) static void
handle_pathname(char *path)
{
 char *opath = path, *s = ((void*)0);
 ssize_t len;
 int slen;
 struct stat sb;


 if (path[0] == '-' && path[1] == '\0') {
  if (dflag)
   handle_stdin();
  else
   handle_stdout();
  return;
 }

retry:
 if (stat(path, &sb) != 0 || (fflag == 0 && cflag == 0 &&
     lstat(path, &sb) != 0)) {

  if (dflag && s == ((void*)0) && errno == ENOENT) {
   len = strlen(path);
   slen = suffixes[0].ziplen;
   s = malloc(len + slen + 1);
   if (s == ((void*)0))
    maybe_err("malloc");
   memcpy(s, path, len);
   memcpy(s + len, suffixes[0].zipped, slen + 1);
   path = s;
   goto retry;
  }
  maybe_warn("can't stat: %s", opath);
  goto out;
 }

 if (S_ISDIR(sb.st_mode)) {

  if (rflag)
   handle_dir(path);
  else

   maybe_warnx("%s is a directory", path);
  goto out;
 }

 if (S_ISREG(sb.st_mode))
  handle_file(path, &sb);
 else
  maybe_warnx("%s is not a regular file", path);

out:
 if (s)
  free(s);
}
