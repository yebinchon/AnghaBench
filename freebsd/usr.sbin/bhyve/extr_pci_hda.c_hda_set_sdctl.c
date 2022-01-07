
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct hda_softc {int dummy; } ;


 int DPRINTF (char*,int ,int,int) ;
 int HDAC_SDCTL0 ;
 int HDAC_SDCTL_RUN ;
 int HDAC_SDCTL_SRST ;
 int assert (int) ;
 int hda_get_reg_by_offset (struct hda_softc*,int) ;
 int hda_get_stream_by_offsets (int,int ) ;
 int hda_stream_reset (struct hda_softc*,int ) ;
 int hda_stream_start (struct hda_softc*,int ) ;
 int hda_stream_stop (struct hda_softc*,int ) ;

__attribute__((used)) static void
hda_set_sdctl(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
 uint8_t stream_ind = hda_get_stream_by_offsets(offset, HDAC_SDCTL0);
 uint32_t value = hda_get_reg_by_offset(sc, offset);
 int err;

 DPRINTF("stream_ind: 0x%x old: 0x%x value: 0x%x\n",
     stream_ind, old, value);

 if (value & HDAC_SDCTL_SRST) {
  hda_stream_reset(sc, stream_ind);
 }

 if ((value & HDAC_SDCTL_RUN) != (old & HDAC_SDCTL_RUN)) {
  if (value & HDAC_SDCTL_RUN) {
   err = hda_stream_start(sc, stream_ind);
   assert(!err);
  } else {
   err = hda_stream_stop(sc, stream_ind);
   assert(!err);
  }
 }
}
