
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKGND ;
 int WIDTH ;

__attribute__((used)) static char *
scnline(int key, char *p, int c)
{
 register int scnwidth;

 for (scnwidth = WIDTH; --scnwidth;) {
  key <<= 1;
  *p++ = key & 0200 ? c : BACKGND;
 }
 return (p);
}
