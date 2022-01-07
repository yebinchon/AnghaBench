
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;
typedef int kobj_t ;


 int DELAY (int) ;
 int PCIR_DSXGCTRL ;
 scalar_t__ ds_cdbusy (struct sc_info*,int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static u_int32_t
ds_initcd(kobj_t obj, void *devinfo)
{
 struct sc_info *sc = (struct sc_info *)devinfo;
 u_int32_t x;

 x = pci_read_config(sc->dev, PCIR_DSXGCTRL, 1);
 if (x & 0x03) {
  pci_write_config(sc->dev, PCIR_DSXGCTRL, x & ~0x03, 1);
  pci_write_config(sc->dev, PCIR_DSXGCTRL, x | 0x03, 1);
  pci_write_config(sc->dev, PCIR_DSXGCTRL, x & ~0x03, 1);
  DELAY(500000);
 }

 return ds_cdbusy(sc, 0)? 0 : 1;
}
