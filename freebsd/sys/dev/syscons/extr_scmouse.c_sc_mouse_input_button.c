
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char mouse_pos; char xsize; } ;
typedef TYPE_1__ scr_stat ;


 int sc_respond (TYPE_1__*,char*,int,int) ;

__attribute__((used)) static void
sc_mouse_input_button(scr_stat *scp, int button)
{
 char mouseb[6] = "\x1B[M";

 mouseb[3] = ' ' + button;
 mouseb[4] = '!' + scp->mouse_pos % scp->xsize;
 mouseb[5] = '!' + scp->mouse_pos / scp->xsize;
 sc_respond(scp, mouseb, sizeof mouseb, 1);
}
