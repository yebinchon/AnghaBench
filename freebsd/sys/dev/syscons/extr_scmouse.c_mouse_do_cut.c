
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xsize; int mouse_cut_start; int mouse_cut_end; int vtb; } ;
typedef TYPE_1__ scr_stat ;


 int IS_BLANK_CHAR (char) ;
 scalar_t__ IS_SPACE_CHAR (char) ;
 char* cut_buffer ;
 int mark_for_update (TYPE_1__*,int) ;
 char sc_vtb_getc (int *,int) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static void
mouse_do_cut(scr_stat *scp, int from, int to)
{
    int blank;
    int i;
    int leadspaces;
    int p;
    int s;

    for (p = from, i = blank = leadspaces = 0; p <= to; ++p) {
 cut_buffer[i] = sc_vtb_getc(&scp->vtb, p);

 if (cut_buffer[i] == '\0')
     cut_buffer[i] = ' ';
 if (!IS_BLANK_CHAR(cut_buffer[i]))
     blank = i + 1;
 ++i;

 if ((p % scp->xsize) == (scp->xsize - 1)) {
     cut_buffer[blank++] = '\r';
     i = blank;
     leadspaces = 0;
 }
    }
    cut_buffer[i] = '\0';


    s = spltty();
    if (scp->mouse_cut_start <= scp->mouse_cut_end) {
 mark_for_update(scp, scp->mouse_cut_start);
 mark_for_update(scp, scp->mouse_cut_end);
    } else if (scp->mouse_cut_end >= 0) {
 mark_for_update(scp, scp->mouse_cut_end);
 mark_for_update(scp, scp->mouse_cut_start);
    }


    scp->mouse_cut_start = from;
    scp->mouse_cut_end = to;
    mark_for_update(scp, from);
    mark_for_update(scp, to);
    splx(s);
}
