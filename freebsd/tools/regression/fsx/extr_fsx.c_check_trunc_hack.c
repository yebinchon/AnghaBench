
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;


 int exit (int) ;
 int fd ;
 int fstat (int ,struct stat*) ;
 int ftruncate (int ,scalar_t__) ;
 int prt (char*) ;

void
check_trunc_hack(void)
{
 struct stat statbuf;

 ftruncate(fd, (off_t)0);
 ftruncate(fd, (off_t)100000);
 fstat(fd, &statbuf);
 if (statbuf.st_size != (off_t)100000) {
  prt("no extend on truncate! not posix!\n");
  exit(130);
 }
 ftruncate(fd, (off_t)0);
}
