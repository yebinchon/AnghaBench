
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpt_softc {int dev; scalar_t__ is_sas; } ;
typedef int bus_size_t ;


 int MPT_OFFSET_DIAG_ADDR ;
 int MPT_OFFSET_DIAG_DATA ;
 int SYS_RES_IOPORT ;
 int mpt_pio_write (struct mpt_softc*,int ,int ) ;
 int pci_disable_io (int ,int ) ;
 int pci_enable_io (int ,int ) ;
 int roundup2 (int ,int) ;

__attribute__((used)) static void
mpt_diag_outsl(struct mpt_softc *mpt, uint32_t addr,
        uint32_t *data, bus_size_t len)
{
 uint32_t *data_end;

 data_end = data + (roundup2(len, sizeof(uint32_t)) / 4);
 if (mpt->is_sas) {
  pci_enable_io(mpt->dev, SYS_RES_IOPORT);
 }
 mpt_pio_write(mpt, MPT_OFFSET_DIAG_ADDR, addr);
 while (data != data_end) {
  mpt_pio_write(mpt, MPT_OFFSET_DIAG_DATA, *data);
  data++;
 }
 if (mpt->is_sas) {
  pci_disable_io(mpt->dev, SYS_RES_IOPORT);
 }
}
