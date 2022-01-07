
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_cut_end; int mouse_cut_start; } ;
typedef TYPE_1__ scr_stat ;


 int FALSE ;

int
sc_inside_cutmark(scr_stat *scp, int pos)
{
    int start;
    int end;

    if (scp->mouse_cut_end < 0)
 return FALSE;
    if (scp->mouse_cut_start <= scp->mouse_cut_end) {
 start = scp->mouse_cut_start;
 end = scp->mouse_cut_end;
    } else {
 start = scp->mouse_cut_end;
 end = scp->mouse_cut_start - 1;
    }
    return ((start <= pos) && (pos <= end));
}
