
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef size_t int8_t ;
typedef scalar_t__ elink_status_t ;


 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 scalar_t__ ELINK_STATUS_ERROR ;
 scalar_t__ ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_GEN_CTRL ;
 int MISC_REGISTERS_GPIO_0 ;
 int MISC_REGISTERS_GPIO_3 ;
 int MISC_REGISTERS_GPIO_HIGH ;
 int MISC_REGISTERS_GPIO_PORT_SHIFT ;
 int MISC_REG_GPIO_EVENT_EN ;
 size_t PORT_MAX ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,size_t) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_ext_phy_hw_reset (struct bxe_softc*,int ) ;
 scalar_t__ elink_populate_phy (struct bxe_softc*,int ,int,int,size_t,struct elink_phy*) ;

__attribute__((used)) static elink_status_t elink_8726_common_init_phy(struct bxe_softc *sc,
          uint32_t shmem_base_path[],
          uint32_t shmem2_base_path[], uint8_t phy_index,
          uint32_t chip_id)
{
 uint32_t val;
 int8_t port;
 struct elink_phy phy;


 val = REG_RD(sc, MISC_REG_GPIO_EVENT_EN);
 val |= ((1<<MISC_REGISTERS_GPIO_3)|
  (1<<(MISC_REGISTERS_GPIO_3 + MISC_REGISTERS_GPIO_PORT_SHIFT)));
 REG_WR(sc, MISC_REG_GPIO_EVENT_EN, val);

 elink_ext_phy_hw_reset(sc, 0);
 DELAY(1000 * 5);
 for (port = 0; port < PORT_MAX; port++) {
  uint32_t shmem_base, shmem2_base;


  if (CHIP_IS_E1x(sc)) {
   shmem_base = shmem_base_path[0];
   shmem2_base = shmem2_base_path[0];
  } else {
   shmem_base = shmem_base_path[port];
   shmem2_base = shmem2_base_path[port];
  }

  if (elink_populate_phy(sc, phy_index, shmem_base, shmem2_base,
           port, &phy) !=
      ELINK_STATUS_OK) {
   ELINK_DEBUG_P0(sc, "populate phy failed\n");
   return ELINK_STATUS_ERROR;
  }


  elink_cl45_write(sc, &phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_GEN_CTRL, 0x0001);



  elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_0,
          MISC_REGISTERS_GPIO_HIGH,
          port);
 }

 return ELINK_STATUS_OK;
}
