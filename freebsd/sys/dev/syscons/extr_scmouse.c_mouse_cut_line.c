
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; scalar_t__ xsize; int mouse_pos; } ;
typedef TYPE_1__ scr_stat ;


 int MOUSE_CUTTING ;
 int MOUSE_VISIBLE ;
 char* cut_buffer ;
 int mouse_do_cut (TYPE_1__*,int,scalar_t__) ;
 int rounddown (int ,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static void
mouse_cut_line(scr_stat *scp)
{
    int len;
    int from;

    if (scp->status & MOUSE_VISIBLE) {
 from = rounddown(scp->mouse_pos, scp->xsize);
 mouse_do_cut(scp, from, from + scp->xsize - 1);
 len = strlen(cut_buffer);
 if (cut_buffer[len - 1] == '\r')
     cut_buffer[len - 1] = '\0';
 scp->status |= MOUSE_CUTTING;
    }
}
