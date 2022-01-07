
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int rtwn_pci_write_1 (struct rtwn_softc*,int ,int const) ;

__attribute__((used)) static int
rtwn_pci_fw_write_block(struct rtwn_softc *sc, const uint8_t *buf,
    uint16_t reg, int mlen)
{
 int i;

 for (i = 0; i < mlen; i++)
  rtwn_pci_write_1(sc, reg++, buf[i]);


 return (0);
}
