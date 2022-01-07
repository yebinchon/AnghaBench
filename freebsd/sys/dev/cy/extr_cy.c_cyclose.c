
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; } ;
struct tty {int t_cflag; int t_state; scalar_t__ t_actout; TYPE_1__ t_init_in; struct com_s* t_sc; } ;
struct com_s {int unit; int intr_enable; int prev_modem_status; int channel_control; struct tty* tp; int * cor; int etc; int iobase; } ;
typedef int cy_addr ;


 int CD1400_CCR_CMDCHANCTL ;
 int CD1400_CCR_CMDRESET ;
 int CD1400_CCR_FTF ;
 int CD1400_CCR_RCVDIS ;
 int CD1400_CCR_XMTEN ;
 int CD1400_COR2 ;
 int CD1400_COR2_ETC ;
 int CD1400_ETC_STOPBREAK ;
 int CD1400_MSVR2_CD ;
 int CD1400_SRER ;
 int CLOCAL ;
 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int ETC_NONE ;
 scalar_t__ FALSE ;
 int HUPCL ;
 int SER_DTR ;
 scalar_t__* TSA_CARR_ON (struct tty*) ;
 int TS_ISOPEN ;
 int cd1400_channel_cmd (struct com_s*,int) ;
 int cd_etc (struct com_s*,int ) ;
 int cd_setreg (struct com_s*,int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int cymodem (struct tty*,int ,int ) ;
 int spltty () ;
 int splx (int) ;
 int ttydtrwaitstart (struct tty*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
cyclose(struct tty *tp)
{
 cy_addr iobase;
 struct com_s *com;
 int s;
 int unit;

 com = tp->t_sc;
 unit = com->unit;
 iobase = com->iobase;
 s = spltty();

 critical_enter();
 COM_LOCK();
 com->etc = ETC_NONE;
 cd_setreg(com, CD1400_COR2, com->cor[1] &= ~CD1400_COR2_ETC);
 COM_UNLOCK();
 critical_exit();
 cd_etc(com, CD1400_ETC_STOPBREAK);
 cd1400_channel_cmd(com, CD1400_CCR_CMDRESET | CD1400_CCR_FTF);

 {
  critical_enter();
  COM_LOCK();
  cd_setreg(com, CD1400_SRER, com->intr_enable = 0);
  COM_UNLOCK();
  critical_exit();
  tp = com->tp;
  if ((tp->t_cflag & HUPCL)







      || (!tp->t_actout
         && !(com->prev_modem_status & CD1400_MSVR2_CD)
         && !(tp->t_init_in.c_cflag & CLOCAL))
      || !(tp->t_state & TS_ISOPEN)) {
   (void)cymodem(tp, 0, SER_DTR);


   com->channel_control = CD1400_CCR_CMDCHANCTL
            | CD1400_CCR_XMTEN
            | CD1400_CCR_RCVDIS;
   cd1400_channel_cmd(com, com->channel_control);

   ttydtrwaitstart(tp);
  }
 }
 tp->t_actout = FALSE;
 wakeup(&tp->t_actout);
 wakeup(TSA_CARR_ON(tp));
 splx(s);
}
