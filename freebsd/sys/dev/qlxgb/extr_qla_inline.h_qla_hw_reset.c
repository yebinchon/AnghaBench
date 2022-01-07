
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int Q8_ASIC_RESET ;
 int WRITE_OFFSET32 (int *,int ,int) ;

__attribute__((used)) static __inline void qla_hw_reset(qla_host_t *ha)
{
        WRITE_OFFSET32(ha, Q8_ASIC_RESET, 0xFFFFFFFF);
}
