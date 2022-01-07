
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pcib_softc {int dev; } ;


 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 int WIN_IO ;
 int WIN_MEM ;
 int WIN_PMEM ;
 int pci_read_config (int ,int ,int) ;
 int pcib_set_io_decode (struct pcib_softc*) ;
 int pcib_set_mem_decode (struct pcib_softc*) ;
 int pcib_write_windows (struct pcib_softc*,int) ;

__attribute__((used)) static void
pcib_cfg_restore(struct pcib_softc *sc)
{

 uint16_t command;





 command = pci_read_config(sc->dev, PCIR_COMMAND, 2);
 if (command & PCIM_CMD_PORTEN)
  pcib_set_io_decode(sc);
 if (command & PCIM_CMD_MEMEN)
  pcib_set_mem_decode(sc);

}
