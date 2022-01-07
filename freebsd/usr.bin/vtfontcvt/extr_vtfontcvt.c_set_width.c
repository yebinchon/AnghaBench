
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VFNT_MAXDIMENSION ;
 int errx (int,char*,int) ;
 int howmany (int,int) ;
 int wbytes ;
 int width ;

__attribute__((used)) static void
set_width(int w)
{
 if (w <= 0 || w > VFNT_MAXDIMENSION)
  errx(1, "invalid width %d", w);
 width = w;
 wbytes = howmany(width, 8);
}
