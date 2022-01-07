
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;
struct tty {scalar_t__ t_ospeed; int t_state; struct com_s* t_sc; } ;
struct termios {scalar_t__ c_ispeed; scalar_t__ c_ospeed; int c_cflag; int* c_cc; int c_iflag; int c_lflag; int c_oflag; } ;
struct com_s {int channel_control; int* cor; int state; int last_modem_status; int intr_enable; int * ibufold; int mcr_rts; int mcr_image; int mcr_rts_reg; int gfrcr_image; } ;


 int BRKINT ;
 int CCTS_OFLOW ;
 int CD1400_CCR_CMDCHANCTL ;
 int CD1400_CCR_CMDCORCHG ;
 int CD1400_CCR_COR1 ;
 int CD1400_CCR_COR2 ;
 int CD1400_CCR_COR3 ;
 int CD1400_CCR_RCVDIS ;
 int CD1400_CCR_RCVEN ;
 int CD1400_CCR_XMTEN ;
 int CD1400_COR1 ;
 int CD1400_COR1_CS5 ;
 int CD1400_COR1_CS6 ;
 int CD1400_COR1_CS7 ;
 int CD1400_COR1_CS8 ;
 int CD1400_COR1_NOINPCK ;
 int CD1400_COR1_PARNORMAL ;
 int CD1400_COR1_PARODD ;
 int CD1400_COR1_STOP2 ;
 int CD1400_COR2 ;
 int CD1400_COR2_CCTS_OFLOW ;
 int CD1400_COR2_IXANY ;
 int CD1400_COR2_IXOFF ;
 int CD1400_COR3 ;
 int CD1400_COR3_FCT ;
 int CD1400_COR3_SCD12 ;
 int CD1400_COR3_SCD34 ;
 int CD1400_COR4 ;
 int CD1400_COR4_ICRNL ;
 int CD1400_COR4_IGNBRK ;
 int CD1400_COR4_IGNCR ;
 int CD1400_COR4_INLCR ;
 int CD1400_COR4_NOBRKINT ;
 int CD1400_COR4_PFO_DISCARD ;
 int CD1400_COR4_PFO_ESC ;
 int CD1400_COR4_PFO_EXCEPTION ;
 int CD1400_COR4_PFO_NUL ;
 int CD1400_COR5 ;
 int CD1400_COR5_ISTRIP ;
 int CD1400_COR5_LNEXT ;
 int CD1400_COR5_OCRNL ;
 int CD1400_COR5_ONLCR ;
 int CD1400_MCOR1 ;
 int CD1400_MCOR1_CDzd ;
 int CD1400_MCOR1_CTSzd ;
 int CD1400_MCOR2 ;
 int CD1400_MCOR2_CDod ;
 int CD1400_MCOR2_CTSod ;
 int CD1400_MSVR2_CTS ;
 int CD1400_RBPR ;
 int CD1400_RCOR ;
 int CD1400_RTPR ;
 int CD1400_SCHR1 ;
 int CD1400_SCHR2 ;
 int CD1400_SCHR3 ;
 int CD1400_SCHR4 ;
 int CD1400_SRER ;
 int CD1400_SRER_TXMPTY ;
 int CD1400_SRER_TXRDY ;
 int CD1400_TBPR ;
 int CD1400_TCOR ;
 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int CREAD ;
 int CRTS_IFLOW ;



 int CSIZE ;
 int CSTOPB ;
 int CS_BUSY ;
 int CS_CTS_OFLOW ;
 int CS_ODEVREADY ;
 int CS_RTS_IFLOW ;
 int CS_TTGO ;
 int CY_CLOCK (int ) ;
 int EINVAL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int IGNPAR ;
 int INLCR ;
 int INPCK ;
 int ISTRIP ;
 int IXANY ;
 int IXOFF ;
 int MIN_RTP ;
 int M_DEVBUF ;
 int OCRNL ;
 int ONLCR ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int RxFifoThreshold ;
 int SER_DTR ;
 int TS_TTSTOP ;
 size_t VINTR ;
 size_t VMIN ;
 size_t VSTART ;
 size_t VSTOP ;
 size_t VSUSP ;
 size_t VTIME ;
 int _POSIX_VDISABLE ;
 int cd1400_channel_cmd (struct com_s*,int) ;
 int cd_setreg (struct com_s*,int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int cyintr1 (struct com_s*) ;
 int cymodem (struct tty*,int ,int ) ;
 int cysetwater (struct com_s*,scalar_t__) ;
 int cyspeed (scalar_t__,int ,int*) ;
 int cystart (struct tty*) ;
 int disc_optim (struct tty*,struct termios*,struct com_s*) ;
 int free (int *,int ) ;
 int howmany (int,scalar_t__) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
cyparam(struct tty *tp, struct termios *t)
{
 int bits;
 int cflag;
 struct com_s *com;
 u_char cor_change;
 u_long cy_clock;
 int idivisor;
 int iflag;
 int iprescaler;
 int itimeout;
 int odivisor;
 int oprescaler;
 u_char opt;
 int s;

 com = tp->t_sc;


 cy_clock = CY_CLOCK(com->gfrcr_image);
 idivisor = cyspeed(t->c_ispeed, cy_clock, &iprescaler);
 if (idivisor <= 0)
  return (EINVAL);
 odivisor = cyspeed(t->c_ospeed != 0 ? t->c_ospeed : tp->t_ospeed,
       cy_clock, &oprescaler);
 if (odivisor <= 0)
  return (EINVAL);


 s = spltty();
 if (t->c_ospeed == 0)
  (void)cymodem(tp, 0, SER_DTR);
 else
  (void)cymodem(tp, SER_DTR, 0);

 (void) cysetwater(com, t->c_ispeed);



 cd_setreg(com, CD1400_RBPR, idivisor);
 cd_setreg(com, CD1400_RCOR, iprescaler);
 cd_setreg(com, CD1400_TBPR, odivisor);
 cd_setreg(com, CD1400_TCOR, oprescaler);






 cflag = t->c_cflag;
 opt = CD1400_CCR_CMDCHANCTL | CD1400_CCR_XMTEN
       | (cflag & CREAD ? CD1400_CCR_RCVEN : CD1400_CCR_RCVDIS);
 if (opt != com->channel_control) {
  com->channel_control = opt;
  cd1400_channel_cmd(com, opt);
 }
 opt = 0;

 if (cflag & PARENB) {
  if (cflag & PARODD)
   opt |= CD1400_COR1_PARODD;
  opt |= CD1400_COR1_PARNORMAL;
 }
 iflag = t->c_iflag;
 if (!(iflag & INPCK))
  opt |= CD1400_COR1_NOINPCK;
 bits = 1 + 1;

 if (cflag & CSTOPB) {
  ++bits;
  opt |= CD1400_COR1_STOP2;
 }

 switch (cflag & CSIZE) {
 case 130:
  bits += 5;
  opt |= CD1400_COR1_CS5;
  break;
 case 129:
  bits += 6;
  opt |= CD1400_COR1_CS6;
  break;
 case 128:
  bits += 7;
  opt |= CD1400_COR1_CS7;
  break;
 default:
  bits += 8;
  opt |= CD1400_COR1_CS8;
  break;
 }
 cor_change = 0;
 if (opt != com->cor[0]) {
  cor_change |= CD1400_CCR_COR1;
  cd_setreg(com, CD1400_COR1, com->cor[0] = opt);
 }




 itimeout = howmany(1000 * bits, t->c_ispeed);





 if (itimeout < 5)
  itimeout = 5;
 if (!(t->c_lflag & ICANON) && t->c_cc[VMIN] != 0 && t->c_cc[VTIME] != 0
     && t->c_cc[VTIME] * 10 > itimeout)
  itimeout = t->c_cc[VTIME] * 10;
 if (itimeout > 255)
  itimeout = 255;
 cd_setreg(com, CD1400_RTPR, itimeout);





 opt = 0;







 if (cflag & CCTS_OFLOW)
  opt |= CD1400_COR2_CCTS_OFLOW;

 critical_enter();
 COM_LOCK();
 if (opt != com->cor[1]) {
  cor_change |= CD1400_CCR_COR2;
  cd_setreg(com, CD1400_COR2, com->cor[1] = opt);
 }
 COM_UNLOCK();
 critical_exit();






 opt = RxFifoThreshold;







 if (opt != com->cor[2]) {
  cor_change |= CD1400_CCR_COR3;
  cd_setreg(com, CD1400_COR3, com->cor[2] = opt);
 }


 if (cor_change)
  cd1400_channel_cmd(com, CD1400_CCR_CMDCORCHG | cor_change);







 opt = 0;
 if (iflag & IGNCR)
  opt |= CD1400_COR4_IGNCR;
 if (iflag & IGNBRK)
  opt |= CD1400_COR4_IGNBRK | CD1400_COR4_NOBRKINT;




 if (!(iflag & (BRKINT | PARMRK)))
  opt |= CD1400_COR4_NOBRKINT;
 opt |= CD1400_COR4_PFO_EXCEPTION;

 cd_setreg(com, CD1400_COR4, opt);




 opt = 0;
 if (iflag & ISTRIP)
  opt |= CD1400_COR5_ISTRIP;
 if (t->c_iflag & IEXTEN)

  opt |= CD1400_COR5_LNEXT;






 cd_setreg(com, CD1400_COR5, opt);
 opt = CD1400_MCOR1_CDzd;




 cd_setreg(com, CD1400_MCOR1, opt);





 opt = CD1400_MCOR2_CDod;




 cd_setreg(com, CD1400_MCOR2, opt);





 critical_enter();
 COM_LOCK();

 com->state &= ~CS_TTGO;
 if (!(tp->t_state & TS_TTSTOP))
  com->state |= CS_TTGO;
 if (cflag & CRTS_IFLOW) {
  com->state |= CS_RTS_IFLOW;






 } else if (com->state & CS_RTS_IFLOW) {
  com->state &= ~CS_RTS_IFLOW;




  cd_setreg(com, com->mcr_rts_reg,
     com->mcr_image |= com->mcr_rts);
 }






 com->state |= CS_ODEVREADY;
 disc_optim(tp, t, com);
 if (com->state >= (CS_BUSY | CS_TTGO | CS_ODEVREADY)) {
  if (!(com->intr_enable & CD1400_SRER_TXRDY))
   cd_setreg(com, CD1400_SRER,
      com->intr_enable
      = (com->intr_enable & ~CD1400_SRER_TXMPTY)
        | CD1400_SRER_TXRDY);
 } else {
  if (com->intr_enable & CD1400_SRER_TXRDY)
   cd_setreg(com, CD1400_SRER,
      com->intr_enable
      = (com->intr_enable & ~CD1400_SRER_TXRDY)
        | CD1400_SRER_TXMPTY);
 }

 COM_UNLOCK();
 critical_exit();
 splx(s);
 cystart(tp);
 if (com->ibufold != ((void*)0)) {
  free(com->ibufold, M_DEVBUF);
  com->ibufold = ((void*)0);
 }
 return (0);
}
