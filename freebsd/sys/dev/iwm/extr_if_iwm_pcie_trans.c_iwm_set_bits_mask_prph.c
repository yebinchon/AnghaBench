
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;


 scalar_t__ iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_read_prph (struct iwm_softc*,int) ;
 int iwm_write_prph (struct iwm_softc*,int,int) ;

void
iwm_set_bits_mask_prph(struct iwm_softc *sc,
 uint32_t reg, uint32_t bits, uint32_t mask)
{
 uint32_t val;


 if (iwm_nic_lock(sc)) {
  val = iwm_read_prph(sc, reg) & mask;
  val |= bits;
  iwm_write_prph(sc, reg, val);
  iwm_nic_unlock(sc);
 }
}
