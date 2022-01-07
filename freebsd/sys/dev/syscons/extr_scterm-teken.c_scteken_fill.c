
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u_char ;
struct TYPE_11__ {int tp_col; unsigned int tp_row; } ;
struct TYPE_10__ {unsigned int tp_col; int tp_row; } ;
struct TYPE_12__ {TYPE_3__ tr_end; TYPE_2__ tr_begin; } ;
typedef TYPE_4__ teken_rect_t ;
typedef size_t teken_char_t ;
typedef int teken_attr_t ;
struct TYPE_13__ {int xsize; int vtb; TYPE_1__* sc; } ;
typedef TYPE_5__ scr_stat ;
struct TYPE_9__ {size_t* scr_map; } ;


 int mark_for_update (TYPE_5__*,int) ;
 int sc_remove_cutmarking (TYPE_5__*) ;
 int sc_vtb_erase (int *,int,unsigned int,size_t,int) ;
 int scteken_get_cp437 (size_t*,int*) ;
 int scteken_te_to_sc_attr (int const*) ;

__attribute__((used)) static void
scteken_fill(void *arg, const teken_rect_t *r, teken_char_t c,
    const teken_attr_t *a)
{
 scr_stat *scp = arg;
 u_char *map;
 u_char ch;
 unsigned int width;
 int attr, row;

 attr = scteken_te_to_sc_attr(a) << 8;



 ch = c;

 map = scp->sc->scr_map;

 if (r->tr_begin.tp_col == 0 && r->tr_end.tp_col == scp->xsize) {

  sc_vtb_erase(&scp->vtb, r->tr_begin.tp_row * scp->xsize,
      (r->tr_end.tp_row - r->tr_begin.tp_row) * scp->xsize,
      map[ch], attr);
 } else {

  width = r->tr_end.tp_col - r->tr_begin.tp_col;

  for (row = r->tr_begin.tp_row; row < r->tr_end.tp_row; row++) {
   sc_vtb_erase(&scp->vtb, r->tr_begin.tp_row *
       scp->xsize + r->tr_begin.tp_col,
       width, map[ch], attr);
  }
 }


 mark_for_update(scp,
     r->tr_begin.tp_row * scp->xsize + r->tr_begin.tp_col);
 mark_for_update(scp,
     (r->tr_end.tp_row - 1) * scp->xsize + (r->tr_end.tp_col - 1));
 sc_remove_cutmarking(scp);
}
