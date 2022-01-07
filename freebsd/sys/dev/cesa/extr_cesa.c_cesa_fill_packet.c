
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cesa_tdma_desc {int dummy; } ;
struct cesa_softc {scalar_t__ sc_sram_base_pa; } ;
struct cesa_packet {scalar_t__ cp_offset; int cp_copyout; int cp_copyin; scalar_t__ cp_size; } ;
struct TYPE_3__ {unsigned int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 scalar_t__ CESA_DATA (scalar_t__) ;
 int ENOMEM ;
 unsigned int MIN (unsigned int,scalar_t__) ;
 int STAILQ_INSERT_TAIL (int *,struct cesa_tdma_desc*,int ) ;
 struct cesa_tdma_desc* cesa_tdma_copy (struct cesa_softc*,scalar_t__,scalar_t__,unsigned int) ;
 int ctd_stq ;

__attribute__((used)) static int
cesa_fill_packet(struct cesa_softc *sc, struct cesa_packet *cp,
    bus_dma_segment_t *seg)
{
 struct cesa_tdma_desc *ctd;
 unsigned int bsize;


 bsize = MIN(seg->ds_len, cp->cp_size - cp->cp_offset);

 if (bsize > 0) {
  ctd = cesa_tdma_copy(sc, sc->sc_sram_base_pa +
      CESA_DATA(cp->cp_offset), seg->ds_addr, bsize);
  if (!ctd)
   return (-ENOMEM);

  STAILQ_INSERT_TAIL(&cp->cp_copyin, ctd, ctd_stq);

  ctd = cesa_tdma_copy(sc, seg->ds_addr, sc->sc_sram_base_pa +
      CESA_DATA(cp->cp_offset), bsize);
  if (!ctd)
   return (-ENOMEM);

  STAILQ_INSERT_TAIL(&cp->cp_copyout, ctd, ctd_stq);

  seg->ds_len -= bsize;
  seg->ds_addr += bsize;
  cp->cp_offset += bsize;
 }

 return (bsize);
}
