
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct timecounter {int dummy; } ;


 int DPCPU_GET (int ) ;
 int UINT32_MAX ;
 int vcpu_info ;
 int xen_fetch_vcpu_time (int ) ;

__attribute__((used)) static uint32_t
xentimer_get_timecount(struct timecounter *tc)
{
 uint64_t vcpu_time;
 vcpu_time = xen_fetch_vcpu_time(DPCPU_GET(vcpu_info));

 return (vcpu_time & UINT32_MAX);
}
