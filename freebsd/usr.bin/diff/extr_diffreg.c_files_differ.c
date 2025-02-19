
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf2 ;
typedef int buf1 ;
struct TYPE_4__ {scalar_t__ st_size; int st_mode; } ;
struct TYPE_3__ {scalar_t__ st_size; int st_mode; } ;
typedef int FILE ;


 int BUFSIZ ;
 int D_EMPTY1 ;
 int D_EMPTY2 ;
 int S_IFMT ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,int,int *) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 TYPE_2__ stb1 ;
 TYPE_1__ stb2 ;

__attribute__((used)) static int
files_differ(FILE *f1, FILE *f2, int flags)
{
 char buf1[BUFSIZ], buf2[BUFSIZ];
 size_t i, j;

 if ((flags & (D_EMPTY1|D_EMPTY2)) || stb1.st_size != stb2.st_size ||
     (stb1.st_mode & S_IFMT) != (stb2.st_mode & S_IFMT))
  return (1);
 for (;;) {
  i = fread(buf1, 1, sizeof(buf1), f1);
  j = fread(buf2, 1, sizeof(buf2), f2);
  if ((!i && ferror(f1)) || (!j && ferror(f2)))
   return (-1);
  if (i != j)
   return (1);
  if (i == 0)
   return (0);
  if (memcmp(buf1, buf2, i) != 0)
   return (1);
 }
}
