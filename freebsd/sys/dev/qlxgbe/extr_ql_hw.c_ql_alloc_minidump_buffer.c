
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * mdump_buffer; int mdump_buffer_size; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int M_NOWAIT ;
 int M_QLA83XXBUF ;
 int * malloc (int ,int ,int ) ;
 int ql_minidump_size (TYPE_2__*) ;

__attribute__((used)) static int
ql_alloc_minidump_buffer(qla_host_t *ha)
{
 ha->hw.mdump_buffer_size = ql_minidump_size(ha);

 if (!ha->hw.mdump_buffer_size)
  return (-1);

 ha->hw.mdump_buffer = malloc(ha->hw.mdump_buffer_size, M_QLA83XXBUF,
     M_NOWAIT);

 if (ha->hw.mdump_buffer == ((void*)0))
  return (-1);

 return (0);
}
