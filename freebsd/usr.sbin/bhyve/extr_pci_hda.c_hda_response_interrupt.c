
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hda_softc {scalar_t__ rirb_cnt; } ;


 int HDAC_RIRBCTL ;
 int HDAC_RIRBCTL_RINTCTL ;
 int HDAC_RIRBSTS ;
 int HDAC_RIRBSTS_RINTFL ;
 int hda_get_reg_by_offset (struct hda_softc*,int ) ;
 int hda_set_field_by_offset (struct hda_softc*,int ,int ,int ) ;
 int hda_update_intr (struct hda_softc*) ;

__attribute__((used)) static void
hda_response_interrupt(struct hda_softc *sc)
{
 uint8_t rirbctl = hda_get_reg_by_offset(sc, HDAC_RIRBCTL);

 if ((rirbctl & HDAC_RIRBCTL_RINTCTL) && sc->rirb_cnt) {
  sc->rirb_cnt = 0;
  hda_set_field_by_offset(sc, HDAC_RIRBSTS, HDAC_RIRBSTS_RINTFL,
    HDAC_RIRBSTS_RINTFL);
  hda_update_intr(sc);
 }
}
