
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nct_softc {int dummy; } ;


 int REG_INV ;
 int nct_set_pin_reg (struct nct_softc*,int ,int ,int) ;

__attribute__((used)) static void
nct_set_pin_inverted(struct nct_softc *sc, uint32_t pin_num, bool val)
{
 nct_set_pin_reg(sc, REG_INV, pin_num, val);
}
