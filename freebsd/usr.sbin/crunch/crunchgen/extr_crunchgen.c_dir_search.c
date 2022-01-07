
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; struct TYPE_3__* next; } ;
typedef TYPE_1__ strlst_t ;


 int MAXPATHLEN ;
 int is_dir (char*) ;
 int out_of_memory () ;
 int snprintf (char*,int,char*,char*,char*) ;
 TYPE_1__* srcdirs ;
 char* strdup (char*) ;

char *dir_search(char *progname)
{
 char path[MAXPATHLEN];
 strlst_t *dir;
 char *srcdir;

 for (dir = srcdirs; dir != ((void*)0); dir = dir->next) {
  snprintf(path, MAXPATHLEN, "%s/%s", dir->str, progname);
  if (!is_dir(path))
   continue;

  if ((srcdir = strdup(path)) == ((void*)0))
   out_of_memory();

  return srcdir;
 }
 return ((void*)0);
}
