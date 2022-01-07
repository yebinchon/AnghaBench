
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scr_stat ;


 int draw_txtmouse (int *,int,int) ;
 int remove_txtmouse (int *,int,int) ;

__attribute__((used)) static void
vga_txtmouse(scr_stat *scp, int x, int y, int on)
{
 if (on)
  draw_txtmouse(scp, x, y);
 else
  remove_txtmouse(scp, x, y);
}
