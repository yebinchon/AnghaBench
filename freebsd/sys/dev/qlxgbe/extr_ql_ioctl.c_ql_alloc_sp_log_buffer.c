
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int qla_sp_log_entry_t ;
struct TYPE_4__ {scalar_t__ sp_log_num_entries; scalar_t__ sp_log_index; int * sp_log; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int M_NOWAIT ;
 int M_QLA83XXBUF ;
 int NUM_LOG_ENTRIES ;
 int bzero (int *,int) ;
 int * malloc (int,int ,int ) ;

void
ql_alloc_sp_log_buffer(qla_host_t *ha)
{
 uint32_t size;

 size = (sizeof(qla_sp_log_entry_t)) * NUM_LOG_ENTRIES;

 ha->hw.sp_log = malloc(size, M_QLA83XXBUF, M_NOWAIT);

 if (ha->hw.sp_log != ((void*)0))
  bzero(ha->hw.sp_log, size);

 ha->hw.sp_log_index = 0;
 ha->hw.sp_log_num_entries = 0;

 return;
}
