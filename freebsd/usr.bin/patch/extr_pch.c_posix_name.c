
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_name {char* path; scalar_t__ exists; } ;


 int MAX_FILE ;
 size_t NEW_FILE ;
 scalar_t__ ok_to_create_file ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
posix_name(const struct file_name *names, bool assume_exists)
{
 char *path = ((void*)0);
 int i;






 for (i = 0; i < MAX_FILE; i++) {
  if (names[i].path != ((void*)0) && names[i].exists) {
   path = names[i].path;
   break;
  }
 }
 if (path == ((void*)0) && !assume_exists) {




  if (path == ((void*)0) && ok_to_create_file &&
      names[NEW_FILE].path != ((void*)0))
   path = names[NEW_FILE].path;
 }

 return path ? xstrdup(path) : ((void*)0);
}
