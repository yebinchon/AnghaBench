
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ess_info {int io; scalar_t__ newspeed; int vc; } ;
typedef int device_t ;


 int EIO ;
 int ESS_PCI_CONFIG ;
 int ESS_PCI_DDMACONTROL ;
 int ESS_PCI_LEGACYCONTROL ;
 int ess_lock (struct ess_info*) ;
 scalar_t__ ess_reset_dsp (struct ess_info*) ;
 int ess_setmixer (struct ess_info*,int,int) ;
 int ess_unlock (struct ess_info*) ;
 scalar_t__ mixer_reinit (int ) ;
 int pci_write_config (int ,int ,int,int) ;
 struct ess_info* pcm_getdevinfo (int ) ;
 int port_wr (int ,int,int,int) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
ess_resume(device_t dev)
{
 uint16_t ddma;
 struct ess_info *sc = pcm_getdevinfo(dev);

 ess_lock(sc);
 ddma = rman_get_start(sc->vc) | 1;
 pci_write_config(dev, ESS_PCI_LEGACYCONTROL, 0x805f, 2);
 pci_write_config(dev, ESS_PCI_DDMACONTROL, ddma, 2);
 pci_write_config(dev, ESS_PCI_CONFIG, 0, 2);

     if (ess_reset_dsp(sc)) {
  ess_unlock(sc);
  goto no;
 }
 ess_unlock(sc);
     if (mixer_reinit(dev))
  goto no;
 ess_lock(sc);
 if (sc->newspeed)
  ess_setmixer(sc, 0x71, 0x2a);

 port_wr(sc->io, 0x7, 0xb0, 1);
 ess_unlock(sc);

 return 0;
 no:
 return EIO;
}
