
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int ENOTDIR ;
 int S_ISDIR (int ) ;
 scalar_t__ errno ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcspn (char*,char*) ;
 int strerror (int ) ;
 int strspn (char*,char*) ;
 int warn (char*,char*) ;
 int warnx (char*,char*,int ) ;

int
mkpath(char *path)
{
 struct stat sb;
 char *slash;
 int done = 0;

 slash = path;

 while (!done) {
  slash += strspn(slash, "/");
  slash += strcspn(slash, "/");

  done = (*slash == '\0');
  *slash = '\0';

  if (stat(path, &sb)) {
   if (errno != ENOENT || (mkdir(path, 0777) &&
       errno != EEXIST)) {
    warn("%s", path);
    return (-1);
   }
  } else if (!S_ISDIR(sb.st_mode)) {
   warnx("%s: %s", path, strerror(ENOTDIR));
   return (-1);
  }

  *slash = '/';
 }

 return (0);
}
