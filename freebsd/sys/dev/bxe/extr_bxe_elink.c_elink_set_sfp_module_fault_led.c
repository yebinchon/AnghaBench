
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;
 int elink_set_e1e2_module_fault_led (struct elink_params*,int ) ;
 int elink_set_e3_module_fault_led (struct elink_params*,int ) ;

__attribute__((used)) static void elink_set_sfp_module_fault_led(struct elink_params *params,
        uint8_t gpio_mode)
{
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P1(sc, "Setting SFP+ module fault LED to %d\n", gpio_mode);
 if (CHIP_IS_E3(sc)) {



  elink_set_e3_module_fault_led(params, gpio_mode);
 } else
  elink_set_e1e2_module_fault_led(params, gpio_mode);
}
