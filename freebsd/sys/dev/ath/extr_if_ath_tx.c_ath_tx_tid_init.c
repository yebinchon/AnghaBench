
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid_q; } ;
struct ath_tid {int tid; int ac; scalar_t__ cleanup_inprogress; scalar_t__ hwq_depth; scalar_t__ sched; scalar_t__ paused; scalar_t__ baw_tail; scalar_t__ baw_head; int ** tx_buf; struct ath_node* an; TYPE_1__ filtq; int tid_q; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int clrdmask; struct ath_tid* an_tid; } ;


 int ATH_NONQOS_TID_AC ;
 int ATH_TID_MAX_BUFS ;
 int IEEE80211_NONQOS_TID ;
 int IEEE80211_TID_SIZE ;
 int TAILQ_INIT (int *) ;
 int TID_TO_WME_AC (int) ;
 int bzero (struct ath_tid*,int) ;

void
ath_tx_tid_init(struct ath_softc *sc, struct ath_node *an)
{
 int i, j;
 struct ath_tid *atid;

 for (i = 0; i < IEEE80211_TID_SIZE; i++) {
  atid = &an->an_tid[i];


  bzero(atid, sizeof(*atid));

  TAILQ_INIT(&atid->tid_q);
  TAILQ_INIT(&atid->filtq.tid_q);
  atid->tid = i;
  atid->an = an;
  for (j = 0; j < ATH_TID_MAX_BUFS; j++)
   atid->tx_buf[j] = ((void*)0);
  atid->baw_head = atid->baw_tail = 0;
  atid->paused = 0;
  atid->sched = 0;
  atid->hwq_depth = 0;
  atid->cleanup_inprogress = 0;
  if (i == IEEE80211_NONQOS_TID)
   atid->ac = ATH_NONQOS_TID_AC;
  else
   atid->ac = TID_TO_WME_AC(i);
 }
 an->clrdmask = 1;
}
