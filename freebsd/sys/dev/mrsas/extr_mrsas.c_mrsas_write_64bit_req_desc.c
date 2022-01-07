
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {int pci_lock; } ;


 int inbound_high_queue_port ;
 int inbound_low_queue_port ;
 int mrsas_reg_set ;
 int mrsas_write_reg (struct mrsas_softc*,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int offsetof (int ,int ) ;

void
mrsas_write_64bit_req_desc(struct mrsas_softc *sc, u_int32_t req_desc_lo,
    u_int32_t req_desc_hi)
{
 mtx_lock(&sc->pci_lock);
 mrsas_write_reg(sc, offsetof(mrsas_reg_set, inbound_low_queue_port),
     req_desc_lo);
 mrsas_write_reg(sc, offsetof(mrsas_reg_set, inbound_high_queue_port),
     req_desc_hi);
 mtx_unlock(&sc->pci_lock);
}
