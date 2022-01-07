
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfxge_txq {int dummy; } ;
struct sfxge_evq {int index; TYPE_1__* sc; } ;
typedef enum sfxge_txq_type { ____Placeholder_sfxge_txq_type } sfxge_txq_type ;
struct TYPE_2__ {struct sfxge_txq** txq; scalar_t__ txq_dynamic_cksum_toggle_supported; } ;


 int KASSERT (int,char*) ;
 int SFXGE_EVQ0_N_TXQ (TYPE_1__*) ;
 int SFXGE_TXQ_IP_TCP_UDP_CKSUM ;
 int SFXGE_TXQ_NTYPES ;

__attribute__((used)) static struct sfxge_txq *
sfxge_get_txq_by_label(struct sfxge_evq *evq, enum sfxge_txq_type label)
{
 unsigned int index;

 KASSERT((evq->sc->txq_dynamic_cksum_toggle_supported) ? (label == 0) :
  ((evq->index == 0 && label < SFXGE_TXQ_NTYPES) ||
   (label == SFXGE_TXQ_IP_TCP_UDP_CKSUM)),
  ("unexpected txq label"));

 index = (evq->index == 0) ?
  label : (evq->index - 1 + SFXGE_EVQ0_N_TXQ(evq->sc));
 return (evq->sc->txq[index]);
}
