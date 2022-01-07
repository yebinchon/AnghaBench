
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int off_t ;


 int SEEK_SET ;
 int buf ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int lseek (int,int,int ) ;
 int read (int,int ,int) ;

__attribute__((used)) static void
rdsect(int fd, off_t blockno, u_int sectorsize)
{
 int error;

 if (lseek(fd, (off_t)blockno * sectorsize, SEEK_SET) == -1)
  err(1, "lseek");
 error = read(fd, buf, sectorsize);
 if (error == -1)
  err(1, "read");
 if (error != (int)sectorsize)
  errx(1, "disk too small for test.");
}
