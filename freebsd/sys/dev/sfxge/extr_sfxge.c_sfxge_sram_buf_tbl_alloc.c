
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sfxge_softc {scalar_t__ buffer_table_next; int enp; } ;
struct TYPE_2__ {scalar_t__ enc_buftbl_limit; } ;


 int KASSERT (int,char*) ;
 TYPE_1__* efx_nic_cfg_get (int ) ;

void
sfxge_sram_buf_tbl_alloc(struct sfxge_softc *sc, size_t n, uint32_t *idp)
{
 KASSERT(sc->buffer_table_next + n <=
  efx_nic_cfg_get(sc->enp)->enc_buftbl_limit,
  ("buffer table full"));

 *idp = sc->buffer_table_next;
 sc->buffer_table_next += n;
}
