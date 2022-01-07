
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ off_t ;


 int SEEK_SET ;
 int fd ;
 scalar_t__ file_size ;
 int ftruncate (int ,scalar_t__) ;
 int good_buf ;
 scalar_t__ lite ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int prt (char*,unsigned long long,...) ;
 int prterr (char*) ;
 int report_failure (int) ;
 int write (int ,int ,scalar_t__) ;

void
writefileimage()
{
 ssize_t iret;

 if (lseek(fd, (off_t)0, SEEK_SET) == (off_t)-1) {
  prterr("writefileimage: lseek");
  report_failure(171);
 }
 iret = write(fd, good_buf, file_size);
 if ((off_t)iret != file_size) {
  if (iret == -1)
   prterr("writefileimage: write");
  else
   prt("short write: 0x%x bytes instead of 0x%llx\n",
       iret, (unsigned long long)file_size);
  report_failure(172);
 }
 if (lite ? 0 : ftruncate(fd, file_size) == -1) {
  prt("ftruncate2: %llx\n", (unsigned long long)file_size);
  prterr("writefileimage: ftruncate");
  report_failure(173);
 }
}
