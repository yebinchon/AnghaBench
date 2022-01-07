
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cmd; int * size; int pci_func; } ;
typedef TYPE_2__ qlnx_trace_t ;
struct TYPE_7__ {int num_hwfns; } ;
struct TYPE_9__ {TYPE_1__ cdev; int pci_func; } ;
typedef TYPE_3__ qlnx_host_t ;


 int qlnx_get_trace_cmd_size (TYPE_3__*,int,int ) ;

__attribute__((used)) static void
qlnx_get_trace_size(qlnx_host_t *ha, qlnx_trace_t *trace)
{
 int i;

 trace->pci_func = ha->pci_func;

 for (i = 0; i < ha->cdev.num_hwfns; i++) {
  trace->size[i] = qlnx_get_trace_cmd_size(ha, i, trace->cmd);
 }

 return;
}
