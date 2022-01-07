
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct TYPE_4__ {scalar_t__ vi_registers_size; scalar_t__ vi_registers; scalar_t__ vi_buffer_size; scalar_t__ vi_buffer; scalar_t__ vi_window; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_5__ {scalar_t__ va_window_size; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
struct machfb_softc {scalar_t__ sc_vmem; scalar_t__ sc_mem; } ;


 int EINVAL ;

__attribute__((used)) static int
machfb_mmap(video_adapter_t *adp, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 struct machfb_softc *sc;
 video_info_t *vi;

 sc = (struct machfb_softc *)adp;
 vi = &adp->va_info;


 if (sc->sc_vmem != 0 && offset >= sc->sc_vmem &&
     offset < sc->sc_vmem + vi->vi_registers_size) {
  *paddr = vi->vi_registers + offset - sc->sc_vmem;
  return (0);
 }


 if (offset >= sc->sc_mem &&
     offset < sc->sc_mem + vi->vi_buffer_size) {
  *paddr = vi->vi_buffer + offset - sc->sc_mem;
  return (0);
 }


 if (offset < adp->va_window_size) {
  *paddr = vi->vi_window + offset;
  return (0);
 }

 return (EINVAL);
}
