
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct smt_entry {int lock; int smac; int state; int pfvf; int iqid; int * wrq; int refcnt; } ;
struct TYPE_3__ {int abs_id; } ;
struct TYPE_4__ {TYPE_1__ fwq; int * ctrlq; } ;
struct adapter {TYPE_2__ sge; } ;


 int ETHER_ADDR_LEN ;
 int SMT_STATE_SWITCHING ;
 int atomic_load_acq_int (int *) ;
 int memcpy (int ,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int t4_write_sme (struct smt_entry*) ;

int
t4_smt_set_switching(struct adapter *sc, struct smt_entry *e, uint16_t pfvf,
        uint8_t *smac)
{
 int rc = 0;

 if (atomic_load_acq_int(&e->refcnt) == 1) {

  mtx_lock(&e->lock);
  e->wrq = &sc->sge.ctrlq[0];
  e->iqid = sc->sge.fwq.abs_id;
  e->pfvf = pfvf;
  e->state = SMT_STATE_SWITCHING;
  memcpy(e->smac, smac, ETHER_ADDR_LEN);
  rc = t4_write_sme(e);
  mtx_unlock(&e->lock);
 }

 return (rc);
}
