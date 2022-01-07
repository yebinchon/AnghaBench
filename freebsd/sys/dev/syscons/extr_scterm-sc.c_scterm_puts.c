
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {int esc; int cur_attr; int num_param; } ;
typedef TYPE_2__ term_stat ;
struct TYPE_11__ {TYPE_1__* sc; TYPE_2__* ts; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_9__ {int write_in_progress; int * scr_map; } ;


 int sc_term_gen_print (TYPE_3__*,int **,int*,int ) ;
 int sc_term_gen_scroll (TYPE_3__*,int ,int ) ;
 int scterm_scan_esc (TYPE_3__*,TYPE_2__*,int ) ;

__attribute__((used)) static void
scterm_puts(scr_stat *scp, u_char *buf, int len)
{
 term_stat *tcp;

 tcp = scp->ts;
outloop:
 scp->sc->write_in_progress++;

 if (tcp->esc) {
  scterm_scan_esc(scp, tcp, *buf);
  buf++;
  len--;
 } else {
  switch (*buf) {
  case 0x1b:
   tcp->esc = 1;
   tcp->num_param = 0;
   buf++;
   len--;
   break;
  default:
   sc_term_gen_print(scp, &buf, &len, tcp->cur_attr);
   break;
  }
 }

 sc_term_gen_scroll(scp, scp->sc->scr_map[0x20], tcp->cur_attr);

 scp->sc->write_in_progress--;
 if (len)
  goto outloop;
}
