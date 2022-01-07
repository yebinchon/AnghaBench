
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int device_t ;


 int DEFAULT_CACHESIZE ;
 int PCIR_CACHELNSZ ;
 int PCIR_CFG_PMCSR ;
 int PCIR_LATTIMER ;
 int PCIR_RETRY_TIMEOUT ;
 void* pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
ath_pci_setup(device_t dev)
{
 uint8_t cz;







 cz = pci_read_config(dev, PCIR_CACHELNSZ, 1);
 if (cz == 0) {
  pci_write_config(dev, PCIR_CACHELNSZ,
      DEFAULT_CACHESIZE / 4, 1);
 }


 pci_write_config(dev, PCIR_LATTIMER, 0xa8, 1);
 pci_write_config(dev, PCIR_RETRY_TIMEOUT, 0, 1);
}
