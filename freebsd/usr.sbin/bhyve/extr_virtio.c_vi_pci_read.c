
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct virtio_softc {int vs_flags; int vs_negotiated_caps; size_t vs_curq; int vs_status; int vs_isr; int vs_msix_cfg_idx; scalar_t__ vs_mtx; TYPE_1__* vs_queues; struct virtio_consts* vs_vc; } ;
struct virtio_consts {char* vc_name; int vc_cfgsize; int (* vc_cfgread ) (int ,int,int,int*) ;int vc_hv_caps; size_t vc_nvq; } ;
struct pci_devinst {struct virtio_softc* pi_arg; } ;
struct config_reg {int cr_size; char* cr_name; } ;
struct TYPE_2__ {int vq_pfn; int vq_qsize; int vq_msix_idx; } ;


 int DEV_SOFTC (struct virtio_softc*) ;
 int VIRTIO_MSI_NO_VECTOR ;
 int VIRTIO_USE_MSIX ;
 scalar_t__ VTCFG_R_CFG0 ;
 scalar_t__ VTCFG_R_CFG1 ;
 int assert (int) ;
 int fprintf (int ,char*,char const*,char*,int) ;
 scalar_t__ pci_emul_msix_tread (struct pci_devinst*,scalar_t__,int) ;
 int pci_lintr_deassert (struct pci_devinst*) ;
 scalar_t__ pci_msix_enabled (struct pci_devinst*) ;
 int pci_msix_pba_bar (struct pci_devinst*) ;
 int pci_msix_table_bar (struct pci_devinst*) ;
 int pthread_mutex_lock (scalar_t__) ;
 int pthread_mutex_unlock (scalar_t__) ;
 int stderr ;
 int stub1 (int ,int,int,int*) ;
 struct config_reg* vi_find_cr (scalar_t__) ;

uint64_t
vi_pci_read(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
     int baridx, uint64_t offset, int size)
{
 struct virtio_softc *vs = pi->pi_arg;
 struct virtio_consts *vc;
 struct config_reg *cr;
 uint64_t virtio_config_size, max;
 const char *name;
 uint32_t newoff;
 uint32_t value;
 int error;

 if (vs->vs_flags & VIRTIO_USE_MSIX) {
  if (baridx == pci_msix_table_bar(pi) ||
      baridx == pci_msix_pba_bar(pi)) {
   return (pci_emul_msix_tread(pi, offset, size));
  }
 }


 assert(baridx == 0);

 if (vs->vs_mtx)
  pthread_mutex_lock(vs->vs_mtx);

 vc = vs->vs_vc;
 name = vc->vc_name;
 value = size == 1 ? 0xff : size == 2 ? 0xffff : 0xffffffff;

 if (size != 1 && size != 2 && size != 4)
  goto bad;

 if (pci_msix_enabled(pi))
  virtio_config_size = VTCFG_R_CFG1;
 else
  virtio_config_size = VTCFG_R_CFG0;

 if (offset >= virtio_config_size) {





  newoff = offset - virtio_config_size;
  max = vc->vc_cfgsize ? vc->vc_cfgsize : 0x100000000;
  if (newoff + size > max)
   goto bad;
  error = (*vc->vc_cfgread)(DEV_SOFTC(vs), newoff, size, &value);
  if (!error)
   goto done;
 }

bad:
 cr = vi_find_cr(offset);
 if (cr == ((void*)0) || cr->cr_size != size) {
  if (cr != ((void*)0)) {

   fprintf(stderr,
       "%s: read from %s: bad size %d\r\n",
       name, cr->cr_name, size);
  } else {
   fprintf(stderr,
       "%s: read from bad offset/size %jd/%d\r\n",
       name, (uintmax_t)offset, size);
  }
  goto done;
 }

 switch (offset) {
 case 135:
  value = vc->vc_hv_caps;
  break;
 case 136:
  value = vs->vs_negotiated_caps;
  break;
 case 133:
  if (vs->vs_curq < vc->vc_nvq)
   value = vs->vs_queues[vs->vs_curq].vq_pfn;
  break;
 case 131:
  value = vs->vs_curq < vc->vc_nvq ?
      vs->vs_queues[vs->vs_curq].vq_qsize : 0;
  break;
 case 130:
  value = vs->vs_curq;
  break;
 case 132:
  value = 0;
  break;
 case 128:
  value = vs->vs_status;
  break;
 case 134:
  value = vs->vs_isr;
  vs->vs_isr = 0;
  if (value)
   pci_lintr_deassert(pi);
  break;
 case 137:
  value = vs->vs_msix_cfg_idx;
  break;
 case 129:
  value = vs->vs_curq < vc->vc_nvq ?
      vs->vs_queues[vs->vs_curq].vq_msix_idx :
      VIRTIO_MSI_NO_VECTOR;
  break;
 }
done:
 if (vs->vs_mtx)
  pthread_mutex_unlock(vs->vs_mtx);
 return (value);
}
