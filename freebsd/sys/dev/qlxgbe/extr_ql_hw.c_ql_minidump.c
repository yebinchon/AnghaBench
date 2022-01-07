
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dma_b; } ;
struct TYPE_10__ {TYPE_1__ minidump; } ;
struct TYPE_11__ {int mdump_done; int mdump_start_seq_index; int mdump_template_size; int mdump_template; TYPE_2__ dma_buf; int mdump_buffer_size; int mdump_buffer; int mdump_usec_ts; int mdump_init; } ;
struct TYPE_12__ {TYPE_3__ hw; } ;
typedef TYPE_4__ qla_host_t ;


 int bcopy (int ,int ,int ) ;
 int bzero (int ,int ) ;
 int ql_parse_template (TYPE_4__*) ;
 int ql_start_sequence (TYPE_4__*,int ) ;
 int ql_stop_sequence (TYPE_4__*) ;
 int qla_get_usec_timestamp () ;

void
ql_minidump(qla_host_t *ha)
{
 if (!ha->hw.mdump_init)
  return;

 if (ha->hw.mdump_done)
  return;
 ha->hw.mdump_usec_ts = qla_get_usec_timestamp();
 ha->hw.mdump_start_seq_index = ql_stop_sequence(ha);

 bzero(ha->hw.mdump_buffer, ha->hw.mdump_buffer_size);
 bzero(ha->hw.mdump_template, ha->hw.mdump_template_size);

 bcopy(ha->hw.dma_buf.minidump.dma_b, ha->hw.mdump_template,
  ha->hw.mdump_template_size);

 ql_parse_template(ha);

 ql_start_sequence(ha, ha->hw.mdump_start_seq_index);

 ha->hw.mdump_done = 1;

 return;
}
