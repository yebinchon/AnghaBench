
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_2__ {scalar_t__ fb_size; int fb_flags; scalar_t__ fb_pbase; } ;
struct ps3fb_softc {TYPE_1__ fb_info; int sc_fbcontext; int sc_reports_size; int sc_reports; int sc_driver_info; int sc_dma_control; int sc_fbhandle; } ;


 int FB_FLAG_NOWRITE ;
 int L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP ;
 int L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_MODE_SET ;
 int L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_SYNC ;
 int L1GPU_DISPLAY_SYNC_VSYNC ;
 scalar_t__ PAGE_SIZE ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int lv1_gpu_close () ;
 int lv1_gpu_context_allocate (int ,int ,int *,int *,int *,int *,int *) ;
 int lv1_gpu_context_attribute (int ,int ,int,int ,int,int ) ;
 int lv1_gpu_memory_allocate (int ,int ,int ,int ,int ,int *,scalar_t__*) ;
 int lv1_gpu_open (int ) ;
 int pmap_kenter_attr (scalar_t__,scalar_t__,int ) ;
 struct ps3fb_softc ps3fb_softc ;
 int roundup2 (scalar_t__,int) ;

void
ps3fb_remap(void)
{
 struct ps3fb_softc *sc;
 vm_offset_t va, fb_paddr;

 sc = &ps3fb_softc;

 lv1_gpu_close();
 lv1_gpu_open(0);

 lv1_gpu_context_attribute(0, L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_MODE_SET,
     0,0,0,0);
 lv1_gpu_context_attribute(0, L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_MODE_SET,
     0,0,1,0);
 lv1_gpu_context_attribute(0, L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_SYNC,
     0,L1GPU_DISPLAY_SYNC_VSYNC,0,0);
 lv1_gpu_context_attribute(0, L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_SYNC,
     1,L1GPU_DISPLAY_SYNC_VSYNC,0,0);
 lv1_gpu_memory_allocate(roundup2(sc->fb_info.fb_size, 1024*1024),
     0, 0, 0, 0, &sc->sc_fbhandle, &fb_paddr);
 lv1_gpu_context_allocate(sc->sc_fbhandle, 0, &sc->sc_fbcontext,
     &sc->sc_dma_control, &sc->sc_driver_info, &sc->sc_reports,
     &sc->sc_reports_size);

 lv1_gpu_context_attribute(sc->sc_fbcontext,
     L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP, 0, 0, 0, 0);
 lv1_gpu_context_attribute(sc->sc_fbcontext,
     L1GPU_CONTEXT_ATTRIBUTE_DISPLAY_FLIP, 1, 0, 0, 0);

 sc->fb_info.fb_pbase = fb_paddr;
 for (va = 0; va < sc->fb_info.fb_size; va += PAGE_SIZE)
  pmap_kenter_attr(0x10000000 + va, fb_paddr + va,
      VM_MEMATTR_WRITE_COMBINING);
 sc->fb_info.fb_flags &= ~FB_FLAG_NOWRITE;
}
