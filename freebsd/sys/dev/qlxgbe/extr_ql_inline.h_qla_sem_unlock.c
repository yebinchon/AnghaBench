
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int READ_REG32 (int *,int ) ;

__attribute__((used)) static __inline void
qla_sem_unlock(qla_host_t *ha, uint32_t sem_reg)
{
 READ_REG32(ha, sem_reg);
}
