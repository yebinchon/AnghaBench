
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct elink_phy {int addr; } ;
struct bxe_softc {int dummy; } ;
typedef int int8_t ;
typedef scalar_t__ elink_status_t ;


 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_NIG_MASK_MI_INT ;
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ;
 int ELINK_NIG_MASK_XGXS0_LINK10G ;
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ;
 scalar_t__ ELINK_STATUS_ERROR ;
 scalar_t__ ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 int MDIO_PMA_REG_EDC_FFE_MAIN ;
 int MDIO_PMA_REG_TX_POWER_DOWN ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 int NIG_REG_PORT_SWAP ;
 int NIG_REG_STRAP_OVERRIDE ;
 int PORT_0 ;
 size_t PORT_1 ;
 int PORT_MAX ;
 scalar_t__ REG_RD (struct bxe_softc*,int ) ;
 scalar_t__ elink_8073_8727_external_rom_boot (struct bxe_softc*,struct elink_phy*,int) ;
 int elink_bits_dis (struct bxe_softc*,scalar_t__,int) ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,int) ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_ext_phy_hw_reset (struct bxe_softc*,int) ;
 scalar_t__ elink_populate_phy (struct bxe_softc*,int ,scalar_t__,scalar_t__,int,struct elink_phy*) ;

__attribute__((used)) static elink_status_t elink_8073_common_init_phy(struct bxe_softc *sc,
          uint32_t shmem_base_path[],
          uint32_t shmem2_base_path[], uint8_t phy_index,
          uint32_t chip_id)
{
 struct elink_phy phy[PORT_MAX];
 struct elink_phy *phy_blk[PORT_MAX];
 uint16_t val;
 int8_t port = 0;
 int8_t port_of_path = 0;
 uint32_t swap_val, swap_override;
 swap_val = REG_RD(sc, NIG_REG_PORT_SWAP);
 swap_override = REG_RD(sc, NIG_REG_STRAP_OVERRIDE);
 port ^= (swap_val && swap_override);
 elink_ext_phy_hw_reset(sc, port);

 for (port = PORT_MAX - 1; port >= PORT_0; port--) {
  uint32_t shmem_base, shmem2_base;

  if (CHIP_IS_E1x(sc)) {
   shmem_base = shmem_base_path[0];
   shmem2_base = shmem2_base_path[0];
   port_of_path = port;
  } else {
   shmem_base = shmem_base_path[port];
   shmem2_base = shmem2_base_path[port];
   port_of_path = 0;
  }


  if (elink_populate_phy(sc, phy_index, shmem_base, shmem2_base,
           port_of_path, &phy[port]) !=
      ELINK_STATUS_OK) {
   ELINK_DEBUG_P0(sc, "populate_phy failed\n");
   return ELINK_STATUS_ERROR;
  }

  elink_bits_dis(sc, NIG_REG_MASK_INTERRUPT_PORT0 +
          port_of_path*4,
          (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
    ELINK_NIG_MASK_XGXS0_LINK10G |
    ELINK_NIG_MASK_SERDES0_LINK_STATUS |
    ELINK_NIG_MASK_MI_INT));




  elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_2,
          MISC_REGISTERS_GPIO_OUTPUT_HIGH,
          port);


  elink_cl45_write(sc, &phy[port],
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_CTRL,
     1<<15);
 }


 DELAY(1000 * 150);

 if (phy[PORT_0].addr & 0x1) {
  phy_blk[PORT_0] = &(phy[PORT_1]);
  phy_blk[PORT_1] = &(phy[PORT_0]);
 } else {
  phy_blk[PORT_0] = &(phy[PORT_0]);
  phy_blk[PORT_1] = &(phy[PORT_1]);
 }


 for (port = PORT_MAX - 1; port >= PORT_0; port--) {
  if (CHIP_IS_E1x(sc))
   port_of_path = port;
  else
   port_of_path = 0;

  ELINK_DEBUG_P1(sc, "Loading spirom for phy address 0x%x\n",
      phy_blk[port]->addr);
  if (elink_8073_8727_external_rom_boot(sc, phy_blk[port],
            port_of_path))
   return ELINK_STATUS_ERROR;


  elink_cl45_read(sc, phy_blk[port],
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_TX_POWER_DOWN, &val);


  elink_cl45_write(sc, phy_blk[port],
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_TX_POWER_DOWN,
     (val | 1<<10));
 }




 DELAY(1000 * 600);


 for (port = PORT_MAX - 1; port >= PORT_0; port--) {


  elink_cl45_read(sc, phy_blk[port],
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_TX_POWER_DOWN, &val);

  elink_cl45_write(sc, phy_blk[port],
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_TX_POWER_DOWN, (val & (~(1<<10))));
  DELAY(1000 * 15);


  elink_cl45_read(sc, phy_blk[port],
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_EDC_FFE_MAIN, &val);
  elink_cl45_write(sc, phy_blk[port],
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_EDC_FFE_MAIN, (val | (1<<12)));


  elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_2,
          MISC_REGISTERS_GPIO_OUTPUT_LOW, port);
 }
 return ELINK_STATUS_OK;
}
