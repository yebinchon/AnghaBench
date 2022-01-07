
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {scalar_t__ int_coal_threshold; scalar_t__ int_coal_time; } ;


 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 int nvme_ctrlr_cmd_set_interrupt_coalescing (struct nvme_controller*,scalar_t__,scalar_t__,int *,int *) ;

__attribute__((used)) static void
nvme_ctrlr_configure_int_coalescing(struct nvme_controller *ctrlr)
{

 ctrlr->int_coal_time = 0;
 TUNABLE_INT_FETCH("hw.nvme.int_coal_time",
     &ctrlr->int_coal_time);

 ctrlr->int_coal_threshold = 0;
 TUNABLE_INT_FETCH("hw.nvme.int_coal_threshold",
     &ctrlr->int_coal_threshold);

 nvme_ctrlr_cmd_set_interrupt_coalescing(ctrlr, ctrlr->int_coal_time,
     ctrlr->int_coal_threshold, ((void*)0), ((void*)0));
}
