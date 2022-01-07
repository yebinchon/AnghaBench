
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xsize; int vtb; } ;
typedef TYPE_1__ scr_stat ;


 int IS_SPACE_CHAR (int) ;
 int sc_vtb_getc (int *,int) ;

__attribute__((used)) static int
skip_spc_right(scr_stat *scp, int p)
{
    int c;
    int i;

    for (i = p % scp->xsize; i < scp->xsize; ++i) {
 c = sc_vtb_getc(&scp->vtb, p);
 if (!IS_SPACE_CHAR(c))
     break;
 ++p;
    }
    return i;
}
