
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int counter_u64_t ;


 int COUNTER_ARRAY_ALLOC (int *,int ,int ) ;
 int M_WAITOK ;
 int VM_METER_NCOUNTERS ;
 int vm_cnt ;

__attribute__((used)) static void
vmcounter_startup(void)
{
 counter_u64_t *cnt = (counter_u64_t *)&vm_cnt;

 COUNTER_ARRAY_ALLOC(cnt, VM_METER_NCOUNTERS, M_WAITOK);
}
