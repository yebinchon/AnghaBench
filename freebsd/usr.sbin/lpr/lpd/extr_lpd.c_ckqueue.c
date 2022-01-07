
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* spool_dir; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;

__attribute__((used)) static int
ckqueue(struct printer *pp)
{
 register struct dirent *d;
 DIR *dirp;
 char *spooldir;

 spooldir = pp->spool_dir;
 if ((dirp = opendir(spooldir)) == ((void*)0))
  return (-1);
 while ((d = readdir(dirp)) != ((void*)0)) {
  if (d->d_name[0] != 'c' || d->d_name[1] != 'f')
   continue;
  closedir(dirp);
  return (1);
 }
 closedir(dirp);
 return (0);
}
