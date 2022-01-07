
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
typedef scalar_t__ off_t ;


 char CIS_LINKTARGET ;
 int PIOCRWFLAG ;
 int SEEK_SET ;
 int err (int,char*,char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int read (int,char*,int) ;

__attribute__((used)) static int
ck_linktarget(int fd, off_t offs, int flag)
{
 char blk[5];

 if (ioctl(fd, PIOCRWFLAG, &flag) < 0)
  err(1, "Setting flag to rad %s memory failed",
      flag ? "attribute" : "common");
 if (lseek(fd, offs, SEEK_SET) < 0)
  err(1, "Unable to seek to memory offset %ju",
      (uintmax_t)offs);
 if (read(fd, blk, 5) != 5)
  return (0);
 if (blk[0] == CIS_LINKTARGET &&
     blk[1] == 0x3 &&
     blk[2] == 'C' &&
     blk[3] == 'I' &&
     blk[4] == 'S')
  return (1);
 return (0);
}
