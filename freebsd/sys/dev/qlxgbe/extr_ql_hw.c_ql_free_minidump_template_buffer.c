
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mdump_template_size; int * mdump_template; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int M_QLA83XXBUF ;
 int free (int *,int ) ;

__attribute__((used)) static void
ql_free_minidump_template_buffer(qla_host_t *ha)
{
 if (ha->hw.mdump_template != ((void*)0)) {
  free(ha->hw.mdump_template, M_QLA83XXBUF);
  ha->hw.mdump_template = ((void*)0);
  ha->hw.mdump_template_size = 0;
 }
 return;
}
