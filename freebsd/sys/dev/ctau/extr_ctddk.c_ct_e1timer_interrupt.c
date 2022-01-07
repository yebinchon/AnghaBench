
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ dm; scalar_t__ css; scalar_t__ oofs; scalar_t__ ses; scalar_t__ bes; scalar_t__ es; scalar_t__ les; scalar_t__ uas; scalar_t__ rcrce; scalar_t__ crce; scalar_t__ fse; scalar_t__ bpv; } ;
struct TYPE_7__ {int dm; int css; int oofs; int ses; int bes; int es; int les; int uas; int rcrce; int crce; int fse; int bpv; } ;
struct TYPE_9__ {scalar_t__ crc4; scalar_t__ cas; } ;
struct TYPE_11__ {scalar_t__ e1_first_int; int cursec; int degsec; unsigned long degerr; int totsec; TYPE_4__ currnt; TYPE_1__ total; TYPE_4__* interval; TYPE_3__ gopt; int status; TYPE_2__* board; scalar_t__ num; } ;
typedef TYPE_5__ ct_chan_t ;
struct TYPE_8__ {int port; } ;


 unsigned long CRCCR (unsigned char,unsigned char) ;
 int DS_CRCCR1 ;
 int DS_CRCCR2 ;
 int DS_EBCR1 ;
 int DS_EBCR2 ;
 int DS_FASCR1 ;
 int DS_FASCR2 ;
 int DS_SR1 ;
 int DS_SR2 ;
 int DS_SSR ;
 int DS_VCR1 ;
 int DS_VCR2 ;
 unsigned short E1CS0 (int ) ;
 unsigned short E1CS1 (int ) ;
 unsigned long EBCR (unsigned char,unsigned char) ;
 int ESTS_AIS ;
 int ESTS_AIS16 ;
 int ESTS_FARLOF ;
 int ESTS_FARLOMF ;
 int ESTS_LOF ;
 int ESTS_LOMF ;
 int ESTS_LOS ;
 int ESTS_NOALARM ;
 unsigned long FASCR (unsigned char,unsigned char) ;
 unsigned char SR1_RCL ;
 unsigned char SR1_RDMA ;
 unsigned char SR1_RLOS ;
 unsigned char SR1_RRA ;
 unsigned char SR1_RSA1 ;
 unsigned char SR1_RSLIP ;
 unsigned char SR1_RUA1 ;
 unsigned char SR2_SEC ;
 unsigned char SSR_SYNC ;
 unsigned char SSR_SYNC_CAS ;
 unsigned char SSR_SYNC_CRC4 ;
 unsigned long VCR (unsigned char,unsigned char) ;
 unsigned char cte_in (unsigned short,int ) ;
 unsigned char cte_ins (unsigned short,int ,int) ;

__attribute__((used)) static void ct_e1timer_interrupt (ct_chan_t *c)
{
 unsigned short port;
 unsigned char sr1, sr2, ssr;
 unsigned long bpv, fas, crc4, ebit, pcv, oof;

 port = c->num ? E1CS1(c->board->port) : E1CS0(c->board->port);

 sr2 = cte_ins (port, DS_SR2, 0xff);

 if (! (sr2 & SR2_SEC))
  return;


 if (c->e1_first_int > 0) {
  c->e1_first_int --;
  return;
 }

 ++c->cursec;
 c->status = 0;


 sr1 = cte_ins (port, DS_SR1, 0xff);
 ssr = cte_in (port, DS_SSR);
 oof = 0;

 if (sr1 & (SR1_RCL | SR1_RLOS))
  c->status |= ESTS_LOS;
 if (sr1 & SR1_RUA1)
  c->status |= ESTS_AIS;
 if (c->gopt.cas && (sr1 & SR1_RSA1))
  c->status |= ESTS_AIS16;
 if (c->gopt.cas && (sr1 & SR1_RDMA))
  c->status |= ESTS_FARLOMF;
 if (sr1 & SR1_RRA)
  c->status |= ESTS_FARLOF;


 if (sr1 & SR1_RSLIP) {
  ++c->currnt.css;
 }

 if (ssr & SSR_SYNC) {
  c->status |= ESTS_LOF;
  ++oof;
 }
 if ((c->gopt.cas && (ssr & SSR_SYNC_CAS)) ||
     (c->gopt.crc4 && (ssr & SSR_SYNC_CRC4))) {
  c->status |= ESTS_LOMF;
  ++oof;
 }

 if (! c->status)
  c->status = ESTS_NOALARM;


 bpv = VCR (cte_in (port, DS_VCR1), cte_in (port, DS_VCR2));
 fas = FASCR (cte_in (port, DS_FASCR1), cte_in (port, DS_FASCR2));
 crc4 = CRCCR (cte_in (port, DS_CRCCR1), cte_in (port, DS_CRCCR2));
 ebit = EBCR (cte_in (port, DS_EBCR1), cte_in (port, DS_EBCR2));

 c->currnt.bpv += bpv;
 c->currnt.fse += fas;
 if (c->gopt.crc4) {
  c->currnt.crce += crc4;
  c->currnt.rcrce += ebit;
 }



 pcv = fas;
 if (c->gopt.crc4)
  pcv += crc4;



 if (sr1 & (SR1_RUA1 | SR1_RCL | SR1_RLOS))

  ++c->currnt.uas;
 else {

  if (bpv)
   ++c->currnt.les;



  if (pcv || oof || (sr1 & SR1_RSLIP))
   ++c->currnt.es;


  if (oof)
   ++c->currnt.oofs;



  if (bpv >= 2048 || pcv >= 832)
   ++c->currnt.ses;
  else {


   if (pcv > 1)
    ++c->currnt.bes;



   ++c->degsec;
   c->degerr += bpv + pcv;
  }
 }



 if (c->cursec / 60 == 0) {
  if (c->degerr > c->degsec * 2048 / 1000)
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
  for (i=0; i<sizeof (c->currnt); ++i)
   *(((char *)(&c->currnt))+i)=0;

  c->totsec += c->cursec;
  c->cursec = 0;
 }
}
