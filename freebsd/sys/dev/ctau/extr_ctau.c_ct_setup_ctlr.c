
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int port_t ;
struct TYPE_6__ {scalar_t__ cas; scalar_t__ higain; scalar_t__ crc4; scalar_t__ hdb3; } ;
struct TYPE_8__ {scalar_t__ num; TYPE_1__ gopt; TYPE_4__* board; } ;
typedef TYPE_3__ ct_chan_t ;
struct TYPE_7__ {scalar_t__ cfg; long s1; long s0; long s2; } ;
struct TYPE_9__ {TYPE_2__ opt; int port; } ;
typedef TYPE_4__ ct_board_t ;


 unsigned char CCR1_CCS ;
 unsigned char CCR1_RCRC4 ;
 unsigned char CCR1_RHDB3 ;
 unsigned char CCR1_TCRC4 ;
 unsigned char CCR1_THDB3 ;
 unsigned char CCR2_AUTORA ;
 unsigned char CCR2_CNTCV ;
 unsigned char CCR2_LOFA1 ;
 unsigned char CCR3_ESRESET ;
 unsigned char CCR3_LIRESET ;
 unsigned char CCR3_TSCLKM ;
 scalar_t__ CFG_A ;
 scalar_t__ CFG_B ;
 scalar_t__ CFG_C ;
 scalar_t__ CFG_D ;
 int DS_CCR1 ;
 int DS_CCR2 ;
 int DS_CCR3 ;
 int DS_IMR1 ;
 int DS_IMR2 ;
 int DS_LICR ;
 int DS_RCBR ;
 int DS_RCR1 ;
 int DS_RCR2 ;
 int DS_RIR ;
 int DS_SR1 ;
 int DS_SR2 ;
 int DS_TAF ;
 int DS_TCBR ;
 int DS_TCR1 ;
 int DS_TCR2 ;
 int DS_TEST1 ;
 int DS_TEST2 ;
 int DS_TIDR ;
 int DS_TIR ;
 int DS_TNAF ;
 int DS_TS ;
 int E1CS0 (int ) ;
 int E1CS1 (int ) ;
 int E1SR (int ) ;
 int E1SR_TP0 ;
 int E1SR_TP1 ;
 unsigned char LICR_HIGAIN ;
 unsigned char LICR_LB120P ;
 unsigned char LICR_LB75P ;
 unsigned char RCR1_RSI ;
 unsigned char RCR1_RSO ;
 unsigned char RCR2_RESE ;
 unsigned char RCR2_RSCLKM ;
 unsigned char RCR2_SA_4 ;
 unsigned char SR2_SEC ;
 unsigned char TCR1_T16S ;
 unsigned char TCR1_TSIS ;
 unsigned char TCR1_TSO ;
 unsigned char TCR2_AEBE ;
 unsigned char TCR2_SA_4 ;
 int cte_ins (int ,int ,int) ;
 int cte_out (int ,int,unsigned char) ;
 int inb (int ) ;

__attribute__((used)) static void ct_setup_ctlr (ct_chan_t *c)
{
 ct_board_t *b = c->board;
 port_t p = c->num ? E1CS1 (b->port) : E1CS0 (b->port);
 unsigned char rcr1, rcr2, tcr1, tcr2, ccr1, licr;
 unsigned long xcbr, tir;
 int i;

 rcr2 = RCR2_RSCLKM;
 tcr1 = TCR1_TSIS | TCR1_TSO;
 tcr2 = 0;
 ccr1 = 0;
 licr = 0;

 if (b->opt.cfg != CFG_D) {

  rcr2 |= RCR2_SA_4;
  tcr2 |= TCR2_SA_4;
 }
 if (b->opt.cfg == CFG_A) {
  rcr1 = RCR1_RSO;
 } else {
  rcr1 = RCR1_RSI;
  rcr2 |= RCR2_RESE;
 }

 if (c->gopt.cas)
  tcr1 |= TCR1_T16S;
 else
  ccr1 |= CCR1_CCS;

 if (c->gopt.hdb3)
  ccr1 |= CCR1_THDB3 | CCR1_RHDB3;

 if (c->gopt.crc4) {
  ccr1 |= CCR1_TCRC4 | CCR1_RCRC4;
  tcr2 |= TCR2_AEBE;
 }

 if (c->gopt.higain)
  licr |= LICR_HIGAIN;
 if (inb (E1SR (b->port)) & (c->num ? E1SR_TP1 : E1SR_TP0))
  licr |= LICR_LB120P;
 else
  licr |= LICR_LB75P;

 cte_out (p, DS_RCR1, rcr1);
 cte_out (p, DS_RCR2, rcr2);
 cte_out (p, DS_TCR1, tcr1);
 cte_out (p, DS_TCR2, tcr2);
 cte_out (p, DS_CCR1, ccr1);
 cte_out (p, DS_CCR2, CCR2_CNTCV | CCR2_AUTORA | CCR2_LOFA1);
 cte_out (p, DS_CCR3, CCR3_TSCLKM);
 cte_out (p, DS_LICR, licr);
 cte_out (p, DS_IMR1, 0);
 cte_out (p, DS_IMR2, SR2_SEC);
 cte_out (p, DS_TEST1, 0);
 cte_out (p, DS_TEST2, 0);
 cte_out (p, DS_TAF, 0x9b);
 cte_out (p, DS_TNAF, 0xdf);
 cte_out (p, DS_TIDR, 0xff);

 cte_out (p, DS_TS, 0x0b);
 for (i=1; i<16; ++i)

  cte_out (p, (unsigned char) (DS_TS+i), 0xff);
 if (b->opt.cfg == CFG_B)
  b->opt.s1 = 0;
 else if (b->opt.cfg == CFG_C)
  b->opt.s1 &=~ b->opt.s0;
 if (c->gopt.cas) {

  b->opt.s0 &=~ (1L << 16);
  b->opt.s1 &=~ (1L << 16);
 }
 b->opt.s2 &=~ b->opt.s0;
 b->opt.s2 &=~ b->opt.s1;
 xcbr = c->num ? b->opt.s1 : b->opt.s0;
 if (b->opt.cfg == CFG_A)
  tir = ~xcbr;
 else if (b->opt.cfg == CFG_D)
  tir = 0;
 else if (c->num == 0)
  tir = ~(b->opt.s0 | b->opt.s1 | b->opt.s2);
 else
  tir = ~b->opt.s2;


 cte_out (p, DS_TIR, (unsigned char) (tir & 0xfe));
 cte_out (p, DS_TIR+1, (unsigned char) (tir >> 8));
 cte_out (p, DS_TIR+2, (unsigned char) (tir >> 16));
 cte_out (p, DS_TIR+3, (unsigned char) (tir >> 24));


 cte_out (p, DS_RCBR, (unsigned char) (xcbr & 0xfe));
 cte_out (p, DS_RCBR+1, (unsigned char) (xcbr >> 8));
 cte_out (p, DS_RCBR+2, (unsigned char) (xcbr >> 16));
 cte_out (p, DS_RCBR+3, (unsigned char) (xcbr >> 24));
 cte_out (p, DS_TCBR, (unsigned char) (xcbr & 0xfe));
 cte_out (p, DS_TCBR+1, (unsigned char) (xcbr >> 8));
 cte_out (p, DS_TCBR+2, (unsigned char) (xcbr >> 16));
 cte_out (p, DS_TCBR+3, (unsigned char) (xcbr >> 24));


 cte_out (p, DS_CCR3, CCR3_TSCLKM | CCR3_LIRESET);
 cte_out (p, DS_CCR3, CCR3_TSCLKM);


 cte_out (p, DS_CCR3, CCR3_TSCLKM | CCR3_ESRESET);
 cte_out (p, DS_CCR3, CCR3_TSCLKM);


 cte_ins (p, DS_SR1, 0xff);
 cte_ins (p, DS_SR2, 0xff);
 cte_ins (p, DS_RIR, 0xff);
}
