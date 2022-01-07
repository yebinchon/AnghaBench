
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int ENXIO ;
 int MIIBUS_READREG (int ,int ,int ) ;
 int MV88E61XX_PORT (int ) ;
 int MV88E61XX_PORT_REVISION ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
mv88e61xxphy_probe(device_t dev)
{
 uint16_t val;

 val = MIIBUS_READREG(device_get_parent(dev), MV88E61XX_PORT(0),
     MV88E61XX_PORT_REVISION);
 switch (val >> 4) {
 case 0x121:
  device_set_desc(dev, "Marvell Link Street 88E6123 3-Port Gigabit Switch");
  return (0);
 case 0x161:
  device_set_desc(dev, "Marvell Link Street 88E6161 6-Port Gigabit Switch");
  return (0);
 case 0x165:
  device_set_desc(dev, "Marvell Link Street 88E6161 6-Port Advanced Gigabit Switch");
  return (0);
 default:
  return (ENXIO);
 }
}
