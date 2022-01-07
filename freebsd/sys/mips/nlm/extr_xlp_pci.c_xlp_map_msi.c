
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int device_t ;


 int ENXIO ;
 int MIPS_MSI_ADDR (int ) ;
 int MIPS_MSI_DATA (int ) ;
 int PIC_PCIE_IRQ (int) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ,int) ;

__attribute__((used)) static int
xlp_map_msi(device_t pcib, device_t dev, int irq, uint64_t *addr,
    uint32_t *data)
{
 int link;

 if (irq < 64) {
  device_printf(dev, "%s: map_msi for irq %d  - ignored",
      device_get_nameunit(pcib), irq);
  return (ENXIO);
 }
 link = (irq - 64) / 32;
 *addr = MIPS_MSI_ADDR(0);
 *data = MIPS_MSI_DATA(PIC_PCIE_IRQ(link));
 return (0);
}
