
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ntb_softc {int device; TYPE_1__* int_info; int * msix_vec; int allocated_interrupts; } ;
struct TYPE_2__ {size_t rid; int * tag; int * res; } ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,size_t*,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,int *,int **) ;
 int device_printf (int ,char*) ;
 int ndev_vec_isr ;

__attribute__((used)) static int
intel_ntb_setup_msix(struct ntb_softc *ntb, uint32_t num_vectors)
{
 uint32_t i;
 int rc;

 for (i = 0; i < num_vectors; i++) {
  ntb->int_info[i].rid = i + 1;
  ntb->int_info[i].res = bus_alloc_resource_any(ntb->device,
      SYS_RES_IRQ, &ntb->int_info[i].rid, RF_ACTIVE);
  if (ntb->int_info[i].res == ((void*)0)) {
   device_printf(ntb->device,
       "bus_alloc_resource failed\n");
   return (ENOMEM);
  }
  ntb->int_info[i].tag = ((void*)0);
  ntb->allocated_interrupts++;
  rc = bus_setup_intr(ntb->device, ntb->int_info[i].res,
      INTR_MPSAFE | INTR_TYPE_MISC, ((void*)0), ndev_vec_isr,
      &ntb->msix_vec[i], &ntb->int_info[i].tag);
  if (rc != 0) {
   device_printf(ntb->device, "bus_setup_intr failed\n");
   return (ENXIO);
  }
 }
 return (0);
}
