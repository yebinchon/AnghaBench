
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct l2t_entry {int refcnt; int lport; int vlan; int lock; int dmac; int state; int iqid; int * wrq; } ;
struct l2t_data {int lock; int nfree; } ;
struct TYPE_3__ {int abs_id; } ;
struct TYPE_4__ {TYPE_1__ fwq; int * ctrlq; } ;
struct adapter {TYPE_2__ sge; struct l2t_data* l2t; } ;


 int ETHER_ADDR_LEN ;
 int L2T_STATE_SWITCHING ;
 int MPASS (int) ;
 int atomic_add_int (int *,int) ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int atomic_store_rel_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 struct l2t_entry* find_or_alloc_l2e (struct l2t_data*,int ,int ,int *) ;
 int memcpy (int ,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int t4_write_l2e (struct l2t_entry*,int ) ;

struct l2t_entry *
t4_l2t_alloc_switching(struct adapter *sc, uint16_t vlan, uint8_t port,
    uint8_t *eth_addr)
{
 struct l2t_data *d = sc->l2t;
 struct l2t_entry *e;
 int rc;

 rw_wlock(&d->lock);
 e = find_or_alloc_l2e(d, vlan, port, eth_addr);
 if (e) {
  if (atomic_load_acq_int(&e->refcnt) == 0) {
   mtx_lock(&e->lock);
   e->wrq = &sc->sge.ctrlq[0];
   e->iqid = sc->sge.fwq.abs_id;
   e->state = L2T_STATE_SWITCHING;
   e->vlan = vlan;
   e->lport = port;
   memcpy(e->dmac, eth_addr, ETHER_ADDR_LEN);
   atomic_store_rel_int(&e->refcnt, 1);
   atomic_subtract_int(&d->nfree, 1);
   rc = t4_write_l2e(e, 0);
   mtx_unlock(&e->lock);
   if (rc != 0)
    e = ((void*)0);
  } else {
   MPASS(e->vlan == vlan);
   MPASS(e->lport == port);
   atomic_add_int(&e->refcnt, 1);
  }
 }
 rw_wunlock(&d->lock);
 return (e);
}
