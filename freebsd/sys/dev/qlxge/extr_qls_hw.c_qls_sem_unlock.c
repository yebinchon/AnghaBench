
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_SEMAPHORE ;
 int WRITE_REG32 (int *,int ,int ) ;

__attribute__((used)) static void
qls_sem_unlock(qla_host_t *ha, uint32_t mask)
{
 WRITE_REG32(ha, Q81_CTL_SEMAPHORE, mask);
}
