
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xentimer_pcpu_data {scalar_t__ timer; } ;
struct eventtimer {int dummy; } ;


 struct xentimer_pcpu_data* DPCPU_PTR (int ) ;
 int PCPU_GET (int ) ;
 int vcpu_id ;
 int xentimer_pcpu ;
 int xentimer_vcpu_stop_timer (int) ;

__attribute__((used)) static int
xentimer_et_stop(struct eventtimer *et)
{
 int cpu = PCPU_GET(vcpu_id);
 struct xentimer_pcpu_data *pcpu = DPCPU_PTR(xentimer_pcpu);

 pcpu->timer = 0;
 return (xentimer_vcpu_stop_timer(cpu));
}
