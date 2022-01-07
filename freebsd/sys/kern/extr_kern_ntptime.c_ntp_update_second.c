
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int l_fp ;
typedef int int64_t ;


 int L_ADD (int ,int ) ;
 int L_LINT (int ,int) ;
 int L_RSHIFT (int ,scalar_t__) ;
 int L_SUB (int ,int ) ;
 int MAXFREQ ;
 int NTP_LOCK () ;
 int NTP_UNLOCK () ;
 scalar_t__ SHIFT_PLL ;
 int STA_DEL ;
 int STA_INS ;
 int STA_PPSSIGNAL ;
 int STA_PPSTIME ;





 scalar_t__ pps_shift ;
 scalar_t__ pps_valid ;
 int time_adj ;
 int time_adjtime ;
 scalar_t__ time_constant ;
 int time_freq ;
 int time_maxerror ;
 int time_offset ;
 int time_state ;
 int time_status ;
 int time_tai ;

void
ntp_update_second(int64_t *adjustment, time_t *newsec)
{
 int tickrate;
 l_fp ftemp;

 NTP_LOCK();
 time_maxerror += MAXFREQ / 1000;
 switch (time_state) {




  case 130:
  if (time_status & STA_INS)
   time_state = 131;
  else if (time_status & STA_DEL)
   time_state = 132;
  break;





  case 131:
  if (!(time_status & STA_INS))
   time_state = 130;
  else if ((*newsec) % 86400 == 0) {
   (*newsec)--;
   time_state = 129;
   time_tai++;
  }
  break;




  case 132:
  if (!(time_status & STA_DEL))
   time_state = 130;
  else if (((*newsec) + 1) % 86400 == 0) {
   (*newsec)++;
   time_tai--;
   time_state = 128;
  }
  break;




  case 129:
   time_state = 128;
  break;




  case 128:
  if (!(time_status & (STA_INS | STA_DEL)))
   time_state = 130;
 }
 ftemp = time_offset;
  L_RSHIFT(ftemp, SHIFT_PLL + time_constant);

 time_adj = ftemp;
 L_SUB(time_offset, ftemp);
 L_ADD(time_adj, time_freq);






 if (time_adjtime != 0) {
  if (time_adjtime > 1000000)
   tickrate = 5000;
  else if (time_adjtime < -1000000)
   tickrate = -5000;
  else if (time_adjtime > 500)
   tickrate = 500;
  else if (time_adjtime < -500)
   tickrate = -500;
  else
   tickrate = time_adjtime;
  time_adjtime -= tickrate;
  L_LINT(ftemp, tickrate * 1000);
  L_ADD(time_adj, ftemp);
 }
 *adjustment = time_adj;
 NTP_UNLOCK();
}
