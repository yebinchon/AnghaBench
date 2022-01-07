
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum dram_type { ____Placeholder_dram_type } dram_type ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;


 int ENXIO ;
 int JEDEC_DTI_SPD ;
 int SPD_OFFSET_DRAM_TYPE ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_desc (int ,char*) ;
 int smbus_get_addr (int ) ;
 int smbus_readb (int ,int,int ,int*) ;

__attribute__((used)) static int
jedec_dimm_probe(device_t dev)
{
 uint8_t addr;
 uint8_t byte;
 int rc;
 enum dram_type type;
 device_t smbus;

 smbus = device_get_parent(dev);
 addr = smbus_get_addr(dev);


 if (((addr & 0xf0) != JEDEC_DTI_SPD) ||
     ((addr & 0x01) != 0)) {
  device_printf(dev,
      "invalid \"addr\" hint; address must start with \"0x%x\","
      " and the least-significant bit must be 0\n",
      JEDEC_DTI_SPD);
  rc = ENXIO;
  goto out;
 }


 rc = smbus_readb(smbus, addr, SPD_OFFSET_DRAM_TYPE, &byte);
 if (rc != 0) {
  device_printf(dev, "failed to read dram_type\n");
  goto out;
 }


 type = (enum dram_type) byte;
 switch (type) {
 case 129:
  rc = BUS_PROBE_DEFAULT;
  device_set_desc(dev, "DDR3 DIMM");
  break;
 case 128:
  rc = BUS_PROBE_DEFAULT;
  device_set_desc(dev, "DDR4 DIMM");
  break;
 default:
  rc = ENXIO;
  break;
 }

out:
 return (rc);
}
