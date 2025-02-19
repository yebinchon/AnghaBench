
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sec_softc {int dummy; } ;
struct sec_lt {TYPE_1__* sl_lt; } ;
struct sec_desc_map_info {scalar_t__ sdmi_offset; scalar_t__ sdmi_size; int sdmi_lt_used; struct sec_lt* sdmi_lt_last; struct sec_lt* sdmi_lt_first; struct sec_softc* sdmi_sc; } ;
typedef scalar_t__ bus_size_t ;
struct TYPE_5__ {scalar_t__ ds_len; int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
typedef int bus_addr_t ;
struct TYPE_4__ {int shl_ptr; scalar_t__ shl_n; scalar_t__ shl_r; scalar_t__ shl_length; } ;


 struct sec_lt* SEC_ALLOC_LT_ENTRY (struct sec_softc*) ;
 int SEC_LOCK_ASSERT (struct sec_softc*,int ) ;
 int descriptors ;

__attribute__((used)) static void
sec_dma_map_desc_cb(void *arg, bus_dma_segment_t *segs, int nseg,
    int error)
{
 struct sec_desc_map_info *sdmi = arg;
 struct sec_softc *sc = sdmi->sdmi_sc;
 struct sec_lt *lt = ((void*)0);
 bus_addr_t addr;
 bus_size_t size;
 int i;

 SEC_LOCK_ASSERT(sc, descriptors);

 if (error)
  return;

 for (i = 0; i < nseg; i++) {
  addr = segs[i].ds_addr;
  size = segs[i].ds_len;


  if (sdmi->sdmi_offset >= size) {
   sdmi->sdmi_offset -= size;
   continue;
  }

  addr += sdmi->sdmi_offset;
  size -= sdmi->sdmi_offset;
  sdmi->sdmi_offset = 0;


  if (sdmi->sdmi_size < size)
   size = sdmi->sdmi_size;

  lt = SEC_ALLOC_LT_ENTRY(sc);
  lt->sl_lt->shl_length = size;
  lt->sl_lt->shl_r = 0;
  lt->sl_lt->shl_n = 0;
  lt->sl_lt->shl_ptr = addr;

  if (sdmi->sdmi_lt_first == ((void*)0))
   sdmi->sdmi_lt_first = lt;

  sdmi->sdmi_lt_used += 1;

  if ((sdmi->sdmi_size -= size) == 0)
   break;
 }

 sdmi->sdmi_lt_last = lt;
}
