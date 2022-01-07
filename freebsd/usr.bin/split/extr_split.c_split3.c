
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int bytecnt ;
 int chunks ;
 int err (int,char*) ;
 int errx (int,char*,int) ;
 int fstat (int ,struct stat*) ;
 int ifd ;
 int split1 () ;

__attribute__((used)) static void
split3(void)
{
 struct stat sb;

 if (fstat(ifd, &sb) == -1) {
  err(1, "stat");

 }

 if (chunks > sb.st_size) {
  errx(1, "can't split into more than %d files",
      (int)sb.st_size);

 }

 bytecnt = sb.st_size / chunks;
 split1();
}
