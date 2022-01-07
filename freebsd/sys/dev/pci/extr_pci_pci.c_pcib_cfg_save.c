
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pcib_softc {int dev; } ;
typedef int device_t ;


 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 int pci_read_config (int ,int ,int) ;
 int pcib_get_io_decode (struct pcib_softc*) ;
 int pcib_get_mem_decode (struct pcib_softc*) ;

__attribute__((used)) static void
pcib_cfg_save(struct pcib_softc *sc)
{

 device_t dev;
 uint16_t command;

 dev = sc->dev;

 command = pci_read_config(dev, PCIR_COMMAND, 2);
 if (command & PCIM_CMD_PORTEN)
  pcib_get_io_decode(sc);
 if (command & PCIM_CMD_MEMEN)
  pcib_get_mem_decode(sc);

}
