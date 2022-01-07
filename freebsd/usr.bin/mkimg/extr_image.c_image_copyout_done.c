
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_CUR ;
 int errno ;
 int ftruncate (int,int) ;
 int lseek (int,long,int ) ;

int
image_copyout_done(int fd)
{
 off_t ofs;
 int error;

 ofs = lseek(fd, 0L, SEEK_CUR);
 if (ofs == -1)
  return (0);
 error = (ftruncate(fd, ofs) == -1) ? errno : 0;
 return (error);
}
