
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_alq_rec {int dummy; } ;
struct TYPE_2__ {int td_ucred; } ;


 int ALQ_DEFAULT_CMODE ;
 int alq_close (int *) ;
 int alq_open (int **,char*,int ,int ,int ,int ) ;
 TYPE_1__* curthread ;
 int * ieee80211_alq ;
 char* ieee80211_alq_logfile ;
 scalar_t__ ieee80211_alq_logged ;
 scalar_t__ ieee80211_alq_lost ;
 int ieee80211_alq_qsize ;
 int printf (char*,...) ;

__attribute__((used)) static int
ieee80211_alq_setlogging(int enable)
{
 int error;

 if (enable) {
  if (ieee80211_alq)
   alq_close(ieee80211_alq);

  error = alq_open(&ieee80211_alq,
      ieee80211_alq_logfile,
      curthread->td_ucred,
      ALQ_DEFAULT_CMODE,
      ieee80211_alq_qsize, 0);
  ieee80211_alq_lost = 0;
  ieee80211_alq_logged = 0;
  printf("net80211: logging to %s enabled; "
      "struct size %d bytes\n",
      ieee80211_alq_logfile,
      (int) sizeof(struct ieee80211_alq_rec));
 } else {
  if (ieee80211_alq)
   alq_close(ieee80211_alq);
  ieee80211_alq = ((void*)0);
  printf("net80211: logging disabled\n");
  error = 0;
 }
 return (error);
}
