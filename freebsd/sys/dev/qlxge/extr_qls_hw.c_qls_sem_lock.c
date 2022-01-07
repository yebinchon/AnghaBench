
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int qla_initiate_recovery; } ;
typedef TYPE_1__ qla_host_t ;


 int Q81_CTL_SEMAPHORE ;
 int QLA_USEC_DELAY (int) ;
 int READ_REG32 (TYPE_1__*,int ) ;
 int WRITE_REG32 (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
qls_sem_lock(qla_host_t *ha, uint32_t mask, uint32_t value)
{
 uint32_t count = 30;
 uint32_t data;

 while (count--) {
  WRITE_REG32(ha, Q81_CTL_SEMAPHORE, (mask|value));

  data = READ_REG32(ha, Q81_CTL_SEMAPHORE);

  if (data & value) {
   return (0);
  } else {
   QLA_USEC_DELAY(100);
  }
 }
 ha->qla_initiate_recovery = 1;
 return (-1);
}
