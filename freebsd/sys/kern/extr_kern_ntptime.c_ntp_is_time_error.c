
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STA_CLOCKERR ;
 int STA_PPSERROR ;
 int STA_PPSFREQ ;
 int STA_PPSJITTER ;
 int STA_PPSSIGNAL ;
 int STA_PPSTIME ;
 int STA_PPSWANDER ;
 int STA_UNSYNC ;

__attribute__((used)) static bool
ntp_is_time_error(int tsl)
{
 if ((tsl & (STA_UNSYNC | STA_CLOCKERR)) ||





     (tsl & (STA_PPSFREQ | STA_PPSTIME) &&
     !(tsl & STA_PPSSIGNAL)) ||




     (tsl & STA_PPSTIME && tsl & STA_PPSJITTER) ||





     (tsl & STA_PPSFREQ &&
     tsl & (STA_PPSWANDER | STA_PPSERROR)))
  return (1);

 return (0);
}
