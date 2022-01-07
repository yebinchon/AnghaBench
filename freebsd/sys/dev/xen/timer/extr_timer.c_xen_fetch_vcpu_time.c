
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vcpu_info {int time; } ;
struct pvclock_vcpu_time_info {int dummy; } ;


 int pvclock_get_timecount (struct pvclock_vcpu_time_info*) ;

__attribute__((used)) static uint64_t
xen_fetch_vcpu_time(struct vcpu_info *vcpu)
{
 struct pvclock_vcpu_time_info *time;

 time = (struct pvclock_vcpu_time_info *) &vcpu->time;

 return (pvclock_get_timecount(time));
}
