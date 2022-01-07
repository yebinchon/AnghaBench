
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; int st_ctime; int st_atime; } ;





 int stat (char*,struct stat*) ;

int
get_file_time(char *pfile, int what, time_t *ptr)
{
 struct stat stat_buf;

 if (pfile == ((void*)0) || ptr == ((void*)0)) {
  return (-1);
 }

 if (stat(pfile, &stat_buf) == -1) {
  return (-1);
 }

 switch (what) {
  case 130:
   *ptr = stat_buf.st_atime;
   return (0);
  case 129:
   *ptr = stat_buf.st_ctime;
   return (0);
  case 128:
   *ptr = stat_buf.st_mtime;
   return (0);
  default:
   return (-1);
 }
}
