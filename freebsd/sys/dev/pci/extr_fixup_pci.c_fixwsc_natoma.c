
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_printf (int ,char*) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
fixwsc_natoma(device_t dev)
{
    int pmccfg;

    pmccfg = pci_read_config(dev, 0x50, 2);







    if ((pmccfg & 0x8000) == 0) {
 device_printf(dev, "correcting Natoma config for non-SMP\n");
 pmccfg |= 0x8000;
 pci_write_config(dev, 0x50, pmccfg, 2);
    }

}
