
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VFNT_MAXDIMENSION ;
 int errx (int,char*,int) ;
 int height ;

__attribute__((used)) static void
set_height(int h)
{
 if (h <= 0 || h > VFNT_MAXDIMENSION)
  errx(1, "invalid height %d", h);
 height = h;
}
