
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nlm_xlpnae_softc {int base; } ;


 int NAE_FREE_IN_FIFO_CFG ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

__attribute__((used)) static void
nlm_xlpnae_print_frin_desc_carving(struct nlm_xlpnae_softc *sc)
{
 int intf;
 uint32_t value;
 int start, size;


 for (intf = 0; intf < 20; intf++) {
  nlm_write_nae_reg(sc->base, NAE_FREE_IN_FIFO_CFG,
      (0x80000000 | intf));
  value = nlm_read_nae_reg(sc->base, NAE_FREE_IN_FIFO_CFG);
  size = 2 * ((value >> 20) & 0x3ff);
  start = 2 * ((value >> 8) & 0x1ff);
 }
}
