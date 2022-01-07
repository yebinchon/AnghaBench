
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int FILE ;


 int BUFSIZ ;
 int SEEK_SET ;
 int clearerr (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fseeko (int *,int ,int ) ;
 int ftello (int *) ;

__attribute__((used)) static int
linecnt(FILE *f)
{
 off_t oldpos = ftello(f);
 int l = 0;
 char lbuf[BUFSIZ];

 while (fgets(lbuf, sizeof lbuf, f))
  l++;
 clearerr(f);
 fseeko(f, oldpos, SEEK_SET);
 return (l);
}
