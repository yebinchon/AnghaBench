
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {scalar_t__ c_cc; } ;
struct tty {int t_state; scalar_t__ t_ihiwat; int t_iflag; int t_rawcc; scalar_t__* t_cc; int t_lflag; TYPE_1__ t_rawq; } ;
struct com_s {int* ibuf; int* iptr; int state; size_t ierroff; int mcr_image; int mcr_rts; int mcr_rts_reg; int * delta_error_counts; struct tty* tp; } ;


 int CD1400_RDSR_BREAK ;
 int CD1400_RDSR_FE ;
 int CD1400_RDSR_OE ;
 int CD1400_RDSR_PE ;
 size_t CE_TTY_BUF_OVERFLOW ;
 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int CS_RTS_IFLOW ;
 int FLUSHO ;
 int IXANY ;
 int IXOFF ;
 int TS_CAN_BYPASS_L_RINT ;
 int TS_ISOPEN ;
 int TS_TBLOCK ;
 int TS_TTSTOP ;
 int TTY_BI ;
 int TTY_FE ;
 int TTY_OE ;
 int TTY_PE ;
 size_t VSTART ;
 size_t VSTOP ;
 scalar_t__ b_to_q (char*,int,TYPE_1__*) ;
 int cd_setreg (struct com_s*,int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int cy_events ;
 int cystart (struct tty*) ;
 int tk_nin ;
 int tk_rawcc ;
 int ttwakeup (struct tty*) ;
 int ttyblock (struct tty*) ;
 int ttyld_rint (struct tty*,int) ;

__attribute__((used)) static void
cyinput(struct com_s *com)
{
 u_char *buf;
 int incc;
 u_char line_status;
 int recv_data;
 struct tty *tp;

 buf = com->ibuf;
 tp = com->tp;
 if (!(tp->t_state & TS_ISOPEN)) {
  cy_events -= (com->iptr - com->ibuf);
  com->iptr = com->ibuf;
  return;
 }
 if (tp->t_state & TS_CAN_BYPASS_L_RINT) {
  do {





   COM_UNLOCK();
   critical_exit();
   incc = com->iptr - buf;
   if (tp->t_rawq.c_cc + incc > tp->t_ihiwat
       && (com->state & CS_RTS_IFLOW
    || tp->t_iflag & IXOFF)
       && !(tp->t_state & TS_TBLOCK))
    ttyblock(tp);
   com->delta_error_counts[CE_TTY_BUF_OVERFLOW]
    += b_to_q((char *)buf, incc, &tp->t_rawq);
   buf += incc;
   tk_nin += incc;
   tk_rawcc += incc;
   tp->t_rawcc += incc;
   ttwakeup(tp);
   if (tp->t_state & TS_TTSTOP
       && (tp->t_iflag & IXANY
    || tp->t_cc[VSTART] == tp->t_cc[VSTOP])) {
    tp->t_state &= ~TS_TTSTOP;
    tp->t_lflag &= ~FLUSHO;
    cystart(tp);
   }
   critical_enter();
   COM_LOCK();
  } while (buf < com->iptr);
 } else {
  do {





   COM_UNLOCK();
   critical_exit();
   line_status = buf[com->ierroff];
   recv_data = *buf++;
   if (line_status
       & (CD1400_RDSR_BREAK | CD1400_RDSR_FE | CD1400_RDSR_OE | CD1400_RDSR_PE)) {
    if (line_status & CD1400_RDSR_BREAK)
     recv_data |= TTY_BI;
    if (line_status & CD1400_RDSR_FE)
     recv_data |= TTY_FE;
    if (line_status & CD1400_RDSR_OE)
     recv_data |= TTY_OE;
    if (line_status & CD1400_RDSR_PE)
     recv_data |= TTY_PE;
   }
   ttyld_rint(tp, recv_data);
   critical_enter();
   COM_LOCK();
  } while (buf < com->iptr);
 }
 cy_events -= (com->iptr - com->ibuf);
 com->iptr = com->ibuf;






 if ((com->state & CS_RTS_IFLOW) && !(com->mcr_image & com->mcr_rts) &&
     !(tp->t_state & TS_TBLOCK))
  cd_setreg(com, com->mcr_rts_reg,
     com->mcr_image |= com->mcr_rts);
}
