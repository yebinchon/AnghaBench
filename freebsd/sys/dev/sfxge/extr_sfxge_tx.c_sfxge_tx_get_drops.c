
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sfxge_txq {scalar_t__ tso_pdrop_no_rsrc; scalar_t__ tso_pdrop_too_many; scalar_t__ netdown_drops; scalar_t__ put_overflow; scalar_t__ get_non_tcp_overflow; scalar_t__ get_overflow; scalar_t__ drops; } ;
struct sfxge_softc {unsigned int txq_count; struct sfxge_txq** txq; } ;



uint64_t
sfxge_tx_get_drops(struct sfxge_softc *sc)
{
 unsigned int index;
 uint64_t drops = 0;
 struct sfxge_txq *txq;


 for (index = 0; index < sc->txq_count; index++) {
  txq = sc->txq[index];





  drops += txq->drops + txq->get_overflow +
    txq->get_non_tcp_overflow +
    txq->put_overflow + txq->netdown_drops +
    txq->tso_pdrop_too_many + txq->tso_pdrop_no_rsrc;
 }
 return (drops);
}
