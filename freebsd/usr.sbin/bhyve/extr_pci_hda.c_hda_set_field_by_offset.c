
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hda_softc {int dummy; } ;


 int hda_get_reg_by_offset (struct hda_softc*,int) ;
 int hda_set_reg_by_offset (struct hda_softc*,int,int) ;

__attribute__((used)) static inline void
hda_set_field_by_offset(struct hda_softc *sc, uint32_t offset,
    uint32_t mask, uint32_t value)
{
 uint32_t reg_value = 0;

 reg_value = hda_get_reg_by_offset(sc, offset);

 reg_value &= ~mask;
 reg_value |= (value & mask);

 hda_set_reg_by_offset(sc, offset, reg_value);
}
