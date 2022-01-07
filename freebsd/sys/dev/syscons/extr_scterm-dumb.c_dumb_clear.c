
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* sc; int vtb; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_6__ {int * scr_map; } ;


 int SC_NORM_ATTR ;
 int mark_all (TYPE_2__*) ;
 int sc_move_cursor (TYPE_2__*,int ,int ) ;
 int sc_vtb_clear (int *,int ,int) ;

__attribute__((used)) static void
dumb_clear(scr_stat *scp)
{
 sc_move_cursor(scp, 0, 0);
 sc_vtb_clear(&scp->vtb, scp->sc->scr_map[0x20], SC_NORM_ATTR << 8);
 mark_all(scp);
}
