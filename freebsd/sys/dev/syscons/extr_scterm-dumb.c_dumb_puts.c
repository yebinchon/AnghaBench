
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_6__ {int write_in_progress; int * scr_map; } ;


 int SC_NORM_ATTR ;
 int sc_term_gen_print (TYPE_2__*,int **,int*,int) ;
 int sc_term_gen_scroll (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
dumb_puts(scr_stat *scp, u_char *buf, int len)
{
 while (len > 0) {
  ++scp->sc->write_in_progress;
  sc_term_gen_print(scp, &buf, &len, SC_NORM_ATTR << 8);
      sc_term_gen_scroll(scp, scp->sc->scr_map[0x20],
       SC_NORM_ATTR << 8);
  --scp->sc->write_in_progress;
 }
}
