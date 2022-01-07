
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct ecore_eth_stats {int dummy; } ;
struct ecore_dev {int * hwfns; } ;
struct TYPE_17__ {scalar_t__ callout_init; } ;
struct TYPE_18__ {int num_rss; int qlnx_callout; TYPE_1__ flags; int hw_stats; int state; struct ecore_dev cdev; TYPE_13__* irq_vec; int num_tc; int pci_dev; } ;
typedef TYPE_2__ qlnx_host_t ;
typedef int device_t ;
struct TYPE_16__ {int irq; int handle; int irq_rid; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int QLNX_STATE_OPEN ;
 int QL_DPRINT1 (TYPE_2__*,char*) ;
 int QL_DPRINT2 (TYPE_2__*,char*,...) ;
 int bus_bind_intr (int ,int ,int) ;
 int bus_setup_intr (int ,int ,int,int *,int ,TYPE_13__*,int *) ;
 int bzero (int *,int) ;
 int callout_reset (int *,int ,int ,TYPE_2__*) ;
 int hz ;
 int mp_ncpus ;
 int qlnx_alloc_mem_arrays (TYPE_2__*) ;
 int qlnx_alloc_mem_load (TYPE_2__*) ;
 int qlnx_fp_isr ;
 int qlnx_free_mem_load (TYPE_2__*) ;
 int qlnx_init_fp (TYPE_2__*) ;
 int qlnx_link_update (int *) ;
 int qlnx_set_link (TYPE_2__*,int) ;
 int qlnx_set_rx_mode (TYPE_2__*) ;
 int qlnx_start_queues (TYPE_2__*) ;
 int qlnx_timer ;
 scalar_t__ qlnx_vf_device (TYPE_2__*) ;

__attribute__((used)) static int
qlnx_load(qlnx_host_t *ha)
{
 int i;
 int rc = 0;
 struct ecore_dev *cdev;
        device_t dev;

 cdev = &ha->cdev;
        dev = ha->pci_dev;

 QL_DPRINT2(ha, "enter\n");

        rc = qlnx_alloc_mem_arrays(ha);
        if (rc)
                goto qlnx_load_exit0;

        qlnx_init_fp(ha);

        rc = qlnx_alloc_mem_load(ha);
        if (rc)
                goto qlnx_load_exit1;

        QL_DPRINT2(ha, "Allocated %d RSS queues on %d TC/s\n",
     ha->num_rss, ha->num_tc);

 for (i = 0; i < ha->num_rss; i++) {

  if ((rc = bus_setup_intr(dev, ha->irq_vec[i].irq,
                        (INTR_TYPE_NET | INTR_MPSAFE),
                        ((void*)0), qlnx_fp_isr, &ha->irq_vec[i],
                        &ha->irq_vec[i].handle))) {

                        QL_DPRINT1(ha, "could not setup interrupt\n");
                        goto qlnx_load_exit2;
  }

  QL_DPRINT2(ha, "rss_id = %d irq_rid %d 			 irq %p handle %p\n", i,

   ha->irq_vec[i].irq_rid,
   ha->irq_vec[i].irq, ha->irq_vec[i].handle);

  bus_bind_intr(dev, ha->irq_vec[i].irq, (i % mp_ncpus));
 }

        rc = qlnx_start_queues(ha);
        if (rc)
                goto qlnx_load_exit2;

        QL_DPRINT2(ha, "Start VPORT, RXQ and TXQ succeeded\n");


        rc = qlnx_set_rx_mode(ha);
        if (rc)
                goto qlnx_load_exit2;


 qlnx_set_link(ha, 1);

 if (qlnx_vf_device(ha) == 0)
  qlnx_link_update(&ha->cdev.hwfns[0]);

        ha->state = QLNX_STATE_OPEN;

 bzero(&ha->hw_stats, sizeof(struct ecore_eth_stats));

 if (ha->flags.callout_init)
         callout_reset(&ha->qlnx_callout, hz, qlnx_timer, ha);

        goto qlnx_load_exit0;

qlnx_load_exit2:
        qlnx_free_mem_load(ha);

qlnx_load_exit1:
        ha->num_rss = 0;

qlnx_load_exit0:
 QL_DPRINT2(ha, "exit [%d]\n", rc);
        return rc;
}
