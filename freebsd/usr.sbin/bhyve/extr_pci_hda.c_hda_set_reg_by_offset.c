
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hda_softc {size_t* regs; } ;


 size_t HDA_LAST_OFFSET ;
 int assert (int) ;

__attribute__((used)) static inline void
hda_set_reg_by_offset(struct hda_softc *sc, uint32_t offset, uint32_t value)
{
 assert(offset < HDA_LAST_OFFSET);
 sc->regs[offset] = value;
}
