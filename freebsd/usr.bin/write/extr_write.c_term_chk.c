
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mode; int st_atime; } ;


 int S_IWRITE ;
 int _PATH_DEV ;
 scalar_t__ fstatat (int,char*,struct stat*,int ) ;
 int warn (char*,int ,char*) ;

int
term_chk(int devfd, char *tty, int *msgsokP, time_t *atimeP, int showerror)
{
 struct stat s;

 if (fstatat(devfd, tty, &s, 0) < 0) {
  if (showerror)
   warn("%s%s", _PATH_DEV, tty);
  return(1);
 }
 *msgsokP = (s.st_mode & (S_IWRITE >> 3)) != 0;
 *atimeP = s.st_atime;
 return(0);
}
