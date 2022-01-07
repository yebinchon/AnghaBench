
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef size_t u_char ;
struct TYPE_10__ {int tp_row; int tp_col; } ;
typedef TYPE_2__ teken_pos_t ;
typedef size_t teken_char_t ;
struct TYPE_11__ {int ta_format; } ;
typedef TYPE_3__ teken_attr_t ;
struct TYPE_12__ {int xsize; int ysize; int vtb; TYPE_1__* sc; } ;
typedef TYPE_4__ scr_stat ;
struct TYPE_9__ {size_t* scr_map; } ;


 int TF_CJK_RIGHT ;
 int imin (int,int) ;
 int mark_for_update (TYPE_4__*,int) ;
 int sc_vtb_pointer (int *,int) ;
 int sc_vtb_putchar (int *,int ,size_t,int) ;
 int scteken_get_cp437 (size_t*,int*) ;
 int scteken_te_to_sc_attr (TYPE_3__ const*) ;

__attribute__((used)) static void
scteken_putchar(void *arg, const teken_pos_t *tp, teken_char_t c,
    const teken_attr_t *a)
{
 scr_stat *scp = arg;
 u_char *map;
 u_char ch;
 vm_offset_t p;
 int cursor, attr;






 attr = scteken_te_to_sc_attr(a) << 8;
 if (a->ta_format & TF_CJK_RIGHT)
  c = ' ';



 ch = c;

 map = scp->sc->scr_map;

 cursor = tp->tp_row * scp->xsize + tp->tp_col;
 p = sc_vtb_pointer(&scp->vtb, cursor);
 sc_vtb_putchar(&scp->vtb, p, map[ch], attr);

 mark_for_update(scp, cursor);




 mark_for_update(scp, imin(cursor + 1, scp->xsize * scp->ysize - 1));
}
