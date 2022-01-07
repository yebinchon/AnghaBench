
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_softc {int vs_pi; TYPE_1__* vs_vc; } ;
struct TYPE_2__ {size_t vc_cfgsize; } ;


 int PCIBAR_IO ;
 size_t VTCFG_R_CFG1 ;
 int pci_emul_alloc_bar (int ,int,int ,size_t) ;

void
vi_set_io_bar(struct virtio_softc *vs, int barnum)
{
 size_t size;





 size = VTCFG_R_CFG1 + vs->vs_vc->vc_cfgsize;
 pci_emul_alloc_bar(vs->vs_pi, barnum, PCIBAR_IO, size);
}
