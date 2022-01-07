
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;


 int iwm_set_bits_mask_prph (struct iwm_softc*,int ,int ,int ) ;

void
iwm_set_bits_prph(struct iwm_softc *sc, uint32_t reg, uint32_t bits)
{
 iwm_set_bits_mask_prph(sc, reg, bits, ~0);
}
