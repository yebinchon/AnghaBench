
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
typedef int bus_addr_t ;


 int bxe_write_dmae_phys_len (struct bxe_softc*,int ,int ,int ) ;

__attribute__((used)) static void
ecore_write_dmae_phys_len(struct bxe_softc *sc,
                          bus_addr_t phys_addr,
                          uint32_t addr,
                          uint32_t len)
{
    bxe_write_dmae_phys_len(sc, phys_addr, addr, len);
}
