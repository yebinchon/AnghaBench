
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ts_teken; } ;
typedef TYPE_2__ teken_stat ;
struct TYPE_11__ {TYPE_1__* sc; int vtb; TYPE_2__* ts; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_9__ {int * scr_map; } ;


 int mark_all (TYPE_3__*) ;
 int sc_move_cursor (TYPE_3__*,int ,int ) ;
 int sc_vtb_clear (int *,int ,int) ;
 int scteken_sync_internal (TYPE_3__*,TYPE_2__*) ;
 int scteken_te_to_sc_attr (int ) ;
 int teken_get_curattr (int *) ;

__attribute__((used)) static void
scteken_clear(scr_stat *scp)
{
 teken_stat *ts = scp->ts;

 sc_move_cursor(scp, 0, 0);
 scteken_sync_internal(scp, ts);
 sc_vtb_clear(&scp->vtb, scp->sc->scr_map[0x20],
       scteken_te_to_sc_attr(teken_get_curattr(&ts->ts_teken))
       << 8);
 mark_all(scp);
}
