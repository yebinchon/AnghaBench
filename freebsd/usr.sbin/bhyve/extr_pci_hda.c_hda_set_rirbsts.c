
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hda_softc {int dummy; } ;


 int HDA_RIRBSTS_IRQ_MASK ;
 int hda_get_reg_by_offset (struct hda_softc*,int) ;
 int hda_set_field_by_offset (struct hda_softc*,int,int,int ) ;
 int hda_set_reg_by_offset (struct hda_softc*,int,int) ;
 int hda_update_intr (struct hda_softc*) ;

__attribute__((used)) static void
hda_set_rirbsts(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
 uint32_t value = hda_get_reg_by_offset(sc, offset);

 hda_set_reg_by_offset(sc, offset, old);


 hda_set_field_by_offset(sc, offset, value & HDA_RIRBSTS_IRQ_MASK, 0);

 hda_update_intr(sc);
}
