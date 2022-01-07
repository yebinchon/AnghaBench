
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * drvr_state; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int M_QLA83XXBUF ;
 int free (int *,int ) ;

void
ql_free_drvr_state_buffer(qla_host_t *ha)
{
 if (ha->hw.drvr_state != ((void*)0))
  free(ha->hw.drvr_state, M_QLA83XXBUF);
 return;
}
