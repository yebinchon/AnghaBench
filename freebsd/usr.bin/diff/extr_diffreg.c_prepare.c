
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int value; } ;
typedef int FILE ;


 int MIN (size_t,int ) ;
 int SIZE_MAX ;
 struct line** file ;
 size_t* len ;
 int readhash (int *,int) ;
 int rewind (int *) ;
 struct line* xcalloc (size_t,int) ;
 struct line* xreallocarray (struct line*,size_t,int) ;

__attribute__((used)) static void
prepare(int i, FILE *fd, size_t filesize, int flags)
{
 struct line *p;
 int h;
 size_t sz, j;

 rewind(fd);

 sz = MIN(filesize, SIZE_MAX) / 25;
 if (sz < 100)
  sz = 100;

 p = xcalloc(sz + 3, sizeof(*p));
 for (j = 0; (h = readhash(fd, flags));) {
  if (j == sz) {
   sz = sz * 3 / 2;
   p = xreallocarray(p, sz + 3, sizeof(*p));
  }
  p[++j].value = h;
 }
 len[i] = j;
 file[i] = p;
}
