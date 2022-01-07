
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct jedec_dimm_softc {int dev; int spd_addr; int smbus; } ;
typedef enum dram_type { ____Placeholder_dram_type } dram_type ;




 int EINVAL ;
 int SPD_OFFSET_DDR3_BUS_WIDTH ;
 int SPD_OFFSET_DDR3_DIMM_RANKS ;
 int SPD_OFFSET_DDR3_SDRAM_CAPACITY ;
 int SPD_OFFSET_DDR3_SDRAM_WIDTH ;
 int SPD_OFFSET_DDR4_BUS_WIDTH ;
 int SPD_OFFSET_DDR4_DIMM_RANKS ;
 int SPD_OFFSET_DDR4_SDRAM_CAPACITY ;
 int SPD_OFFSET_DDR4_SDRAM_PKG_TYPE ;
 int SPD_OFFSET_DDR4_SDRAM_WIDTH ;
 int device_printf (int ,char*,...) ;
 int smbus_readb (int ,int ,int,int*) ;

__attribute__((used)) static int
jedec_dimm_capacity(struct jedec_dimm_softc *sc, enum dram_type type,
    uint32_t *capacity_mb)
{
 uint8_t bus_width_byte;
 uint8_t bus_width_offset;
 uint8_t dimm_ranks_byte;
 uint8_t dimm_ranks_offset;
 uint8_t sdram_capacity_byte;
 uint8_t sdram_capacity_offset;
 uint8_t sdram_pkg_type_byte;
 uint8_t sdram_pkg_type_offset;
 uint8_t sdram_width_byte;
 uint8_t sdram_width_offset;
 uint32_t bus_width;
 uint32_t dimm_ranks;
 uint32_t sdram_capacity;
 uint32_t sdram_pkg_type;
 uint32_t sdram_width;
 int rc;

 switch (type) {
 case 129:
  bus_width_offset = SPD_OFFSET_DDR3_BUS_WIDTH;
  dimm_ranks_offset = SPD_OFFSET_DDR3_DIMM_RANKS;
  sdram_capacity_offset = SPD_OFFSET_DDR3_SDRAM_CAPACITY;
  sdram_width_offset = SPD_OFFSET_DDR3_SDRAM_WIDTH;
  break;
 case 128:
  bus_width_offset = SPD_OFFSET_DDR4_BUS_WIDTH;
  dimm_ranks_offset = SPD_OFFSET_DDR4_DIMM_RANKS;
  sdram_capacity_offset = SPD_OFFSET_DDR4_SDRAM_CAPACITY;
  sdram_pkg_type_offset = SPD_OFFSET_DDR4_SDRAM_PKG_TYPE;
  sdram_width_offset = SPD_OFFSET_DDR4_SDRAM_WIDTH;
  break;
 default:
  device_printf(sc->dev, "unsupported dram_type 0x%02x\n", type);
  rc = EINVAL;
  goto out;
 }

 rc = smbus_readb(sc->smbus, sc->spd_addr, bus_width_offset,
     &bus_width_byte);
 if (rc != 0) {
  device_printf(sc->dev, "failed to read bus_width: %d\n", rc);
  goto out;
 }

 rc = smbus_readb(sc->smbus, sc->spd_addr, dimm_ranks_offset,
     &dimm_ranks_byte);
 if (rc != 0) {
  device_printf(sc->dev, "failed to read dimm_ranks: %d\n", rc);
  goto out;
 }

 rc = smbus_readb(sc->smbus, sc->spd_addr, sdram_capacity_offset,
     &sdram_capacity_byte);
 if (rc != 0) {
  device_printf(sc->dev, "failed to read sdram_capacity: %d\n",
      rc);
  goto out;
 }

 rc = smbus_readb(sc->smbus, sc->spd_addr, sdram_width_offset,
     &sdram_width_byte);
 if (rc != 0) {
  device_printf(sc->dev, "failed to read sdram_width: %d\n", rc);
  goto out;
 }


 if (type == 128) {
  rc = smbus_readb(sc->smbus, sc->spd_addr, sdram_pkg_type_offset,
      &sdram_pkg_type_byte);
  if (rc != 0) {
   device_printf(sc->dev,
       "failed to read sdram_pkg_type: %d\n", rc);
   goto out;
  }
 }


 bus_width_byte &= 0x07;
 if (bus_width_byte <= 3) {
  bus_width = 1 << bus_width_byte;
  bus_width *= 8;
 } else {
  device_printf(sc->dev, "invalid bus width info\n");
  rc = EINVAL;
  goto out;
 }




 dimm_ranks_byte >>= 3;
 dimm_ranks_byte &= 0x07;
 if (dimm_ranks_byte <= 7) {
  dimm_ranks = dimm_ranks_byte + 1;
 } else {
  device_printf(sc->dev, "invalid DIMM Rank info\n");
  rc = EINVAL;
  goto out;
 }
 if ((dimm_ranks_byte >= 4) && (type != 128)) {
  device_printf(sc->dev, "invalid DIMM Rank info\n");
  rc = EINVAL;
  goto out;
 }





 sdram_capacity_byte &= 0x0f;
 if (sdram_capacity_byte <= 7) {
  sdram_capacity = 1 << sdram_capacity_byte;
  sdram_capacity *= 256;
 } else if (sdram_capacity_byte <= 9) {
  sdram_capacity = 12 << (sdram_capacity_byte - 8);
  sdram_capacity *= 1024;
 } else {
  device_printf(sc->dev, "invalid SDRAM capacity info\n");
  rc = EINVAL;
  goto out;
 }
 if ((sdram_capacity_byte >= 7) && (type != 128)) {
  device_printf(sc->dev, "invalid SDRAM capacity info\n");
  rc = EINVAL;
  goto out;
 }


 sdram_width_byte &= 0x7;
 if (sdram_width_byte <= 3) {
  sdram_width = 1 << sdram_width_byte;
  sdram_width *= 4;
 } else {
  device_printf(sc->dev, "invalid SDRAM width info\n");
  rc = EINVAL;
  goto out;
 }





 if ((type == 128) &&
     ((sdram_pkg_type_byte & 0x3) == 2)) {
  sdram_pkg_type_byte >>= 4;
  sdram_pkg_type_byte &= 0x07;
  sdram_pkg_type = sdram_pkg_type_byte + 1;
  dimm_ranks *= sdram_pkg_type;
 }




 *capacity_mb = sdram_capacity / 8 * bus_width / sdram_width *
     dimm_ranks;

out:
 return (rc);
}
