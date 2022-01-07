
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int MISC_REG_PORT4MODE_EN ;
 int MISC_REG_PORT4MODE_EN_OVWR ;
 int REG_RD (struct bxe_softc*,int ) ;

__attribute__((used)) static uint8_t elink_is_4_port_mode(struct bxe_softc *sc)
{
 uint32_t port4mode_ovwr_val;

 port4mode_ovwr_val = REG_RD(sc, MISC_REG_PORT4MODE_EN_OVWR);
 if (port4mode_ovwr_val & (1<<0)) {

  return ((port4mode_ovwr_val & (1<<1)) == (1<<1));
 }

 return (uint8_t)REG_RD(sc, MISC_REG_PORT4MODE_EN);
}
