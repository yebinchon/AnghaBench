
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int allocated_interrupts; int device; struct amd_ntb_int_info* int_info; int db_mask; int db_valid_mask; } ;
struct amd_ntb_int_info {int * res; int * tag; } ;


 int AMD_DBMASK_OFFSET ;
 int SYS_RES_IRQ ;
 int amd_ntb_free_msix_vec (struct amd_ntb_softc*) ;
 int amd_ntb_reg_write (int,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
amd_ntb_deinit_isr(struct amd_ntb_softc *ntb)
{
 struct amd_ntb_int_info *current_int;
 int i;


 ntb->db_mask = ntb->db_valid_mask;
 amd_ntb_reg_write(4, AMD_DBMASK_OFFSET, ntb->db_mask);

 for (i = 0; i < ntb->allocated_interrupts; i++) {
  current_int = &ntb->int_info[i];
  if (current_int->tag != ((void*)0))
   bus_teardown_intr(ntb->device, current_int->res,
       current_int->tag);

  if (current_int->res != ((void*)0))
   bus_release_resource(ntb->device, SYS_RES_IRQ,
       rman_get_rid(current_int->res), current_int->res);
 }

 amd_ntb_free_msix_vec(ntb);
}
