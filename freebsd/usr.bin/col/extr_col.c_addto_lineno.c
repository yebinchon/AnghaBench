
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int INT_MIN ;
 int errx (int,char*) ;

void
addto_lineno(int *lno, int offset)
{
 if (offset > 0) {
  if (*lno >= INT_MAX - offset)
   errx(1, "too many lines");
 } else {
  if (*lno < INT_MIN - offset)
   errx(1, "too many reverse line feeds");
 }
 *lno += offset;
}
