
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ DMAE_READY (struct bxe_softc*) ;
 int GUNZIP_BUF (struct bxe_softc*) ;
 int GUNZIP_PHYS (struct bxe_softc*) ;
 int ecore_init_ind_wr (struct bxe_softc*,int ,int ,int ) ;
 int ecore_init_str_wr (struct bxe_softc*,int ,int ,int ) ;
 int ecore_write_dmae_phys_len (struct bxe_softc*,int ,int ,int ) ;

__attribute__((used)) static void ecore_write_big_buf_wb(struct bxe_softc *sc, uint32_t addr, uint32_t len)
{
 if (DMAE_READY(sc))
  ecore_write_dmae_phys_len(sc, GUNZIP_PHYS(sc), addr, len);


 else if (CHIP_IS_E1(sc))
  ecore_init_ind_wr(sc, addr, GUNZIP_BUF(sc), len);


 else
  ecore_init_str_wr(sc, addr, GUNZIP_BUF(sc), len);
}
