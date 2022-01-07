
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int off_t ;


 int SEEK_END ;
 int fd ;
 int file_size ;
 scalar_t__ fstat (int ,struct stat*) ;
 int lseek (int ,int,int ) ;
 int prt (char*,unsigned long long,unsigned long long,unsigned long long) ;
 int prterr (char*) ;
 int report_failure (int) ;

void
check_size(void)
{
 struct stat statbuf;
 off_t size_by_seek;

 if (fstat(fd, &statbuf)) {
  prterr("check_size: fstat");
  statbuf.st_size = -1;
 }
 size_by_seek = lseek(fd, (off_t)0, SEEK_END);
 if (file_size != statbuf.st_size || file_size != size_by_seek) {
  prt("Size error: expected 0x%llx stat 0x%llx seek 0x%llx\n",
      (unsigned long long)file_size,
      (unsigned long long)statbuf.st_size,
      (unsigned long long)size_by_seek);
  report_failure(120);
 }
}
