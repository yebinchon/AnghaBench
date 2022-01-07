
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; } ;


 int S_ISVTX ;
 int W_OK ;
 scalar_t__ access (char const*,int ) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ userid ;

__attribute__((used)) static int
checkwriteperm(const char *file, const char *directory)
{
 struct stat stats;
 if (access(directory, W_OK) == 0) {
  stat(directory, &stats);
  if (stats.st_mode & S_ISVTX) {
   stat(file, &stats);
   if(stats.st_uid == userid) {
    return(0);
   }
  } else return(0);
 }
 return(-1);
}
