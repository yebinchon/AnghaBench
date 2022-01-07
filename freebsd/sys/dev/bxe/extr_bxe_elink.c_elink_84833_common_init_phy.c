
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int DELAY (int) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;
 int ELINK_STATUS_OK ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int elink_84833_get_reset_gpios (struct bxe_softc*,int *,int ) ;
 int elink_cb_gpio_mult_write (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static elink_status_t elink_84833_common_init_phy(struct bxe_softc *sc,
      uint32_t shmem_base_path[],
      uint32_t shmem2_base_path[],
      uint8_t phy_index,
      uint32_t chip_id)
{
 uint8_t reset_gpios;
 reset_gpios = elink_84833_get_reset_gpios(sc, shmem_base_path, chip_id);
 elink_cb_gpio_mult_write(sc, reset_gpios, MISC_REGISTERS_GPIO_OUTPUT_LOW);
 DELAY(10);
 elink_cb_gpio_mult_write(sc, reset_gpios, MISC_REGISTERS_GPIO_OUTPUT_HIGH);
 ELINK_DEBUG_P1(sc, "84833 reset pulse on pin values 0x%x\n",
  reset_gpios);
 return ELINK_STATUS_OK;
}
