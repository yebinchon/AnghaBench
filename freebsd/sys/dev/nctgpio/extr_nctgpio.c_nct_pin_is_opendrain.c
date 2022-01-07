
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nct_softc {int dev_f; } ;


 int NCT_PIN_BIT (int ) ;
 int nct_outcfg_addr (int ) ;
 int superio_read (int ,int) ;

__attribute__((used)) static bool
nct_pin_is_opendrain(struct nct_softc *sc, uint32_t pin_num)
{
 uint8_t reg;
 uint8_t outcfg;

 reg = nct_outcfg_addr(pin_num);
 outcfg = superio_read(sc->dev_f, reg);
 return (outcfg & NCT_PIN_BIT(pin_num));
}
