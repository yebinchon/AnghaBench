
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ dm; scalar_t__ css; scalar_t__ oofs; scalar_t__ ses; scalar_t__ bes; scalar_t__ es; scalar_t__ les; scalar_t__ uas; scalar_t__ rcrce; scalar_t__ crce; scalar_t__ fse; scalar_t__ bpv; } ;
struct TYPE_8__ {int dm; int css; int oofs; int ses; int bes; int es; int les; int uas; int rcrce; int crce; int fse; int bpv; } ;
struct TYPE_9__ {int cursec; scalar_t__ mode; int totsec; int degsec; int degerr; TYPE_4__ currnt; TYPE_2__ total; TYPE_4__* interval; int status; TYPE_1__* board; scalar_t__ num; } ;
typedef TYPE_3__ ct_chan_t ;
struct TYPE_7__ {int port; } ;


 int ESTS_LOS ;
 int ESTS_NOALARM ;
 int ESTS_TSTERR ;
 int ESTS_TSTREQ ;
 int GERR (int ) ;
 int GERR_BPV0 ;
 int GERR_BPV1 ;
 int GERR_ERR0 ;
 int GERR_ERR1 ;
 int GLDR (int ) ;
 int GLDR_LREQ0 ;
 int GLDR_LREQ1 ;
 scalar_t__ M_G703 ;
 int ct_get_cd (TYPE_3__*) ;
 int inb (int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int outb (int ,int) ;

void ct_g703_timer (ct_chan_t *c)
{
 int bpv, cd, tsterr, tstreq;





 ++c->cursec;
 if (c->mode != M_G703)
  return;
 if (c->totsec + c->cursec <= 1)
  return;
 c->status = 0;

 cd = ct_get_cd (c);

 bpv = inb (GERR (c->board->port)) & (c->num ? GERR_BPV1 : GERR_BPV0);
 outb (GERR (c->board->port), bpv);

 tsterr = inb (GERR (c->board->port)) & (c->num ? GERR_ERR1 : GERR_ERR0);
 outb (GERR (c->board->port), tsterr);

 tstreq = inb (GLDR (c->board->port)) &
  (c->num ? GLDR_LREQ1 : GLDR_LREQ0);
 outb (GLDR (c->board->port), tstreq);


 if (bpv)
  ++c->currnt.bpv;
 if (! cd)
  c->status |= ESTS_LOS;
 if (tsterr)
  c->status |= ESTS_TSTERR;
 if (tstreq)
  c->status |= ESTS_TSTREQ;

 if (! c->status)
  c->status = ESTS_NOALARM;


 if ((! cd) || tstreq)

  ++c->currnt.uas;
 else {

  if (bpv)
   ++c->currnt.les;



  ++c->degsec;
  if (cd && bpv)
   ++c->degerr;
 }


 if (c->cursec / 60 == 0) {
  if (c->degerr*2 > c->degsec)
   ++c->currnt.dm;
  c->degsec = 0;
  c->degerr = 0;
 }


 if (c->cursec > 15*60) {
  int i;

  for (i=47; i>0; --i)
   c->interval[i] = c->interval[i-1];
  c->interval[0] = c->currnt;


  c->total.bpv += c->currnt.bpv;
  c->total.fse += c->currnt.fse;
  c->total.crce += c->currnt.crce;
  c->total.rcrce += c->currnt.rcrce;
  c->total.uas += c->currnt.uas;
  c->total.les += c->currnt.les;
  c->total.es += c->currnt.es;
  c->total.bes += c->currnt.bes;
  c->total.ses += c->currnt.ses;
  c->total.oofs += c->currnt.oofs;
  c->total.css += c->currnt.css;
  c->total.dm += c->currnt.dm;
  memset (&c->currnt, 0, sizeof (c->currnt));

  c->totsec += c->cursec;
  c->cursec = 0;
 }
}
