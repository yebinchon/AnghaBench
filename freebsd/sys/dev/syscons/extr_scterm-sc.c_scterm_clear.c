
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cur_attr; } ;
typedef TYPE_2__ term_stat ;
struct TYPE_9__ {TYPE_1__* sc; int vtb; TYPE_2__* ts; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_7__ {int * scr_map; } ;


 int mark_all (TYPE_3__*) ;
 int sc_move_cursor (TYPE_3__*,int ,int ) ;
 int sc_vtb_clear (int *,int ,int ) ;

__attribute__((used)) static void
scterm_clear(scr_stat *scp)
{
 term_stat *tcp = scp->ts;

 sc_move_cursor(scp, 0, 0);
 sc_vtb_clear(&scp->vtb, scp->sc->scr_map[0x20], tcp->cur_attr);
 mark_all(scp);
}
