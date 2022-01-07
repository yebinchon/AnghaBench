
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 int AFMT_CHANNEL (scalar_t__) ;
 scalar_t__ score_val (int ) ;
 scalar_t__ snd_fmtbestbit (scalar_t__,scalar_t__*) ;
 scalar_t__ snd_fmtbestchannel (scalar_t__,scalar_t__*) ;
 int snd_fmtscore (scalar_t__) ;
 scalar_t__ snd_fmtvalid (scalar_t__,scalar_t__*) ;

u_int32_t
snd_fmtbest(u_int32_t fmt, u_int32_t *fmts)
{
 u_int32_t best1, best2;
 u_int32_t score, score1, score2;

 if (snd_fmtvalid(fmt, fmts))
  return fmt;

 best1 = snd_fmtbestchannel(fmt, fmts);
 best2 = snd_fmtbestbit(fmt, fmts);

 if (best1 != 0 && best2 != 0 && best1 != best2) {

  if (AFMT_CHANNEL(fmt) > 1)
   return best1;
  else {
   score = score_val(snd_fmtscore(fmt));
   score1 = score_val(snd_fmtscore(best1));
   score2 = score_val(snd_fmtscore(best2));
   if (score1 == score2 || score1 == score)
    return best1;
   else if (score2 == score)
    return best2;
   else if (score1 > score2)
    return best1;
   return best2;
  }
 } else if (best2 == 0)
  return best1;
 else
  return best2;
}
