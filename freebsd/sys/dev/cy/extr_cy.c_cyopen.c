
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {struct com_s* t_sc; } ;
struct com_s {int unit; int channel_control; int intr_enable; int last_modem_status; int prev_modem_status; } ;
struct cdev {int dummy; } ;


 int CD1400_CCR_CHANRESET ;
 int CD1400_CCR_CMDRESET ;
 int CD1400_LIVR ;
 int CD1400_MSVR2 ;
 int CD1400_SRER ;
 int CD1400_SRER_MDMCH ;
 int CD1400_SRER_RXDATA ;
 int CD1400_xIVR_CHAN ;
 int CD1400_xIVR_CHAN_SHIFT ;
 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int cd1400_channel_cmd (struct com_s*,int) ;
 int cd_getreg (struct com_s*,int ) ;
 int cd_setreg (struct com_s*,int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int cysettimeout () ;
 int spltty () ;

__attribute__((used)) static int
cyopen(struct tty *tp, struct cdev *dev)
{
 struct com_s *com;
 int s;

 com = tp->t_sc;
 s = spltty();






 cd_setreg(com, CD1400_LIVR,
    (com->unit & CD1400_xIVR_CHAN) << CD1400_xIVR_CHAN_SHIFT);






 cd1400_channel_cmd(com,
      CD1400_CCR_CMDRESET | CD1400_CCR_CHANRESET);
 cd1400_channel_cmd(com, com->channel_control);

 critical_enter();
 COM_LOCK();
 com->prev_modem_status = com->last_modem_status
     = cd_getreg(com, CD1400_MSVR2);
 cd_setreg(com, CD1400_SRER,
    com->intr_enable
    = CD1400_SRER_MDMCH | CD1400_SRER_RXDATA);
 COM_UNLOCK();
 critical_exit();
 cysettimeout();
 return (0);
}
