
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buffer ;
 int bufsize ;
 int current ;
 int* xrealloc (int*,int,int *) ;

__attribute__((used)) static void
addchar(int c)
{
 if (current +1 > bufsize) {
  if (bufsize == 0)
   bufsize = 1024;
  else
   bufsize *= 2;
  buffer = xrealloc(buffer, bufsize, ((void*)0));
 }
 buffer[current++] = c;
}
