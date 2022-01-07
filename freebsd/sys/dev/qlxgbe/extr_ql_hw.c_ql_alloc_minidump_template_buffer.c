
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_1__ minidump; } ;
struct TYPE_8__ {int * mdump_template; int mdump_template_size; TYPE_2__ dma_buf; } ;
struct TYPE_9__ {TYPE_3__ hw; } ;
typedef TYPE_4__ qla_host_t ;


 int M_NOWAIT ;
 int M_QLA83XXBUF ;
 int * malloc (int ,int ,int ) ;

__attribute__((used)) static int
ql_alloc_minidump_template_buffer(qla_host_t *ha)
{
 ha->hw.mdump_template_size = ha->hw.dma_buf.minidump.size;

 ha->hw.mdump_template = malloc(ha->hw.mdump_template_size,
     M_QLA83XXBUF, M_NOWAIT);

 if (ha->hw.mdump_template == ((void*)0))
  return (-1);

 return (0);
}
