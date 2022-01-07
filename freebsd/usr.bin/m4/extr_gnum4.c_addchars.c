
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 int buffer ;
 int bufsize ;
 int current ;
 int errx (int,char*) ;
 int memcpy (int,char const*,size_t) ;
 int xrealloc (int,int,int *) ;

__attribute__((used)) static void
addchars(const char *c, size_t n)
{
 if (n == 0)
  return;
 while (current + n > bufsize) {
  if (bufsize == 0)
   bufsize = 1024;
  else if (bufsize <= SIZE_MAX/2) {
   bufsize *= 2;
  } else {
   errx(1, "size overflow");
  }
  buffer = xrealloc(buffer, bufsize, ((void*)0));
 }
 memcpy(buffer+current, c, n);
 current += n;
}
