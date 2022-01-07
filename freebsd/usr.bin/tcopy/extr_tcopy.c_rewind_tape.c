
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int MTREW ;
 int SEEK_SET ;
 scalar_t__ S_ISREG (int ) ;
 int errx (int,char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int lseek (int,int ,int ) ;
 int writeop (int,int ) ;

__attribute__((used)) static void
rewind_tape(int fd)
{
 struct stat sp;

 if(fstat(fd, &sp))
  errx(12, "fstat in rewind");




 if( S_ISREG(sp.st_mode) ) {
  if( lseek(fd, 0, SEEK_SET) == -1 )
   errx(13, "lseek");
 } else

  writeop(fd, MTREW);
}
