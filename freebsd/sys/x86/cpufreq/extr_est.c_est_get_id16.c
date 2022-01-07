
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int MSR_PERF_STATUS ;
 int rdmsr (int ) ;

__attribute__((used)) static void
est_get_id16(uint16_t *id16_p)
{
 *id16_p = rdmsr(MSR_PERF_STATUS) & 0xffff;
}
