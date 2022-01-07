
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ SSIZE_MAX ;
 int exit (int) ;
 scalar_t__ lite ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int prt (char*) ;
 int prterr (char*) ;
 int warn (char*,unsigned int,unsigned long long) ;
 scalar_t__ write (int,char*,size_t) ;

void
save_buffer(char *buffer, off_t bufferlength, int fd)
{
 off_t ret;
 ssize_t byteswritten;

 if (fd <= 0 || bufferlength == 0)
  return;

 if (bufferlength > SSIZE_MAX) {
  prt("fsx flaw: overflow in save_buffer\n");
  exit(67);
 }
 if (lite) {
  off_t size_by_seek = lseek(fd, (off_t)0, SEEK_END);
  if (size_by_seek == (off_t)-1)
   prterr("save_buffer: lseek eof");
  else if (bufferlength > size_by_seek) {
   warn("save_buffer: .fsxgood file too short... will save 0x%llx bytes instead of 0x%llx\n", (unsigned long long)size_by_seek,
        (unsigned long long)bufferlength);
   bufferlength = size_by_seek;
  }
 }

 ret = lseek(fd, (off_t)0, SEEK_SET);
 if (ret == (off_t)-1)
  prterr("save_buffer: lseek 0");

 byteswritten = write(fd, buffer, (size_t)bufferlength);
 if (byteswritten != bufferlength) {
  if (byteswritten == -1)
   prterr("save_buffer write");
  else
   warn("save_buffer: short write, 0x%x bytes instead of 0x%llx\n",
        (unsigned)byteswritten,
        (unsigned long long)bufferlength);
 }
}
