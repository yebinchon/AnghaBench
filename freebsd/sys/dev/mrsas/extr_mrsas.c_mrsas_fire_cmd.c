
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {scalar_t__ atomic_desc_support; } ;


 int inbound_single_queue_port ;
 int mrsas_reg_set ;
 int mrsas_write_64bit_req_desc (struct mrsas_softc*,int ,int ) ;
 int mrsas_write_reg (struct mrsas_softc*,int ,int ) ;
 int offsetof (int ,int ) ;

void
mrsas_fire_cmd(struct mrsas_softc *sc, u_int32_t req_desc_lo,
    u_int32_t req_desc_hi)
{
 if (sc->atomic_desc_support)
  mrsas_write_reg(sc, offsetof(mrsas_reg_set, inbound_single_queue_port),
      req_desc_lo);
 else
  mrsas_write_64bit_req_desc(sc, req_desc_lo, req_desc_hi);
}
