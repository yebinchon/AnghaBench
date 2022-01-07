
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int tmp ;
struct stat {scalar_t__ st_uid; int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int MAXPATHLEN ;
 int S_ISDIR (int ) ;
 int closedir (int *) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int system (char*) ;

__attribute__((used)) static void
rmat(uid_t uid)
{
 DIR *d = opendir("/var/at/jobs");

 if (d != ((void*)0)) {
  struct dirent *e;

  while ((e = readdir(d)) != ((void*)0)) {
   struct stat st;

   if (strncmp(e->d_name, ".lock", 5) != 0 &&
       stat(e->d_name, &st) == 0 &&
       !S_ISDIR(st.st_mode) &&
       st.st_uid == uid) {
    char tmp[MAXPATHLEN];

    snprintf(tmp, sizeof(tmp), "/usr/bin/atrm %s",
        e->d_name);
    system(tmp);
   }
  }
  closedir(d);
 }
}
