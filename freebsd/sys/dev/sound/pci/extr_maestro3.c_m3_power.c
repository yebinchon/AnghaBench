
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int CHANGE ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK_ASSERT (struct sc_info*) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
m3_power(struct sc_info *sc, int state)
{
 u_int32_t data;

 M3_DEBUG(CHANGE, ("m3_power(%d)\n", state));
 M3_LOCK_ASSERT(sc);

 data = pci_read_config(sc->dev, 0x34, 1);
 if (pci_read_config(sc->dev, data, 1) == 1) {
  pci_write_config(sc->dev, data + 4, state, 1);
 }

 return 0;
}
