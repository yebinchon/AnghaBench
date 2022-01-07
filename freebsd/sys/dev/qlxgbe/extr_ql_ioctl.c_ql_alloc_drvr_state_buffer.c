
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int * drvr_state; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int M_NOWAIT ;
 int M_QLA83XXBUF ;
 int bzero (int *,int ) ;
 int * malloc (int ,int ,int ) ;
 int ql_drvr_state_size (TYPE_2__*) ;

void
ql_alloc_drvr_state_buffer(qla_host_t *ha)
{
 uint32_t drvr_state_size;

 drvr_state_size = ql_drvr_state_size(ha);

 ha->hw.drvr_state = malloc(drvr_state_size, M_QLA83XXBUF, M_NOWAIT);

 if (ha->hw.drvr_state != ((void*)0))
  bzero(ha->hw.drvr_state, drvr_state_size);

 return;
}
