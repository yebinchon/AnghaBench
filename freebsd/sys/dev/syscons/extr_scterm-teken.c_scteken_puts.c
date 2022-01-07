
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int ts_teken; } ;
typedef TYPE_2__ teken_stat ;
struct TYPE_7__ {TYPE_1__* sc; TYPE_2__* ts; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_5__ {int write_in_progress; } ;


 int teken_input (int *,int *,int) ;

__attribute__((used)) static void
scteken_puts(scr_stat *scp, u_char *buf, int len)
{
 teken_stat *ts = scp->ts;

 scp->sc->write_in_progress++;
 teken_input(&ts->ts_teken, buf, len);
 scp->sc->write_in_progress--;
}
