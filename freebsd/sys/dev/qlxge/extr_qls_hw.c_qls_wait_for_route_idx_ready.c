
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int qla_initiate_recovery; } ;
typedef TYPE_1__ qla_host_t ;


 int Q81_CTL_ROUTING_INDEX ;
 int QLA_USEC_DELAY (int) ;
 int READ_REG32 (TYPE_1__*,int ) ;

__attribute__((used)) static int
qls_wait_for_route_idx_ready(qla_host_t *ha, uint32_t op)
{
 uint32_t data32;
 uint32_t count = 3;

 while (count--) {
  data32 = READ_REG32(ha, Q81_CTL_ROUTING_INDEX);

  if (data32 & op)
   return (0);

  QLA_USEC_DELAY(100);
 }
 ha->qla_initiate_recovery = 1;
 return (-1);
}
