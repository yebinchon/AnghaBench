
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hda_softc {int dummy; } ;


 int HDAC_GCTL_CRST ;
 int hda_get_reg_by_offset (struct hda_softc*,int) ;
 int hda_reset (struct hda_softc*) ;

__attribute__((used)) static void
hda_set_gctl(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
 uint32_t value = hda_get_reg_by_offset(sc, offset);

 if (!(value & HDAC_GCTL_CRST)) {
  hda_reset(sc);
 }
}
