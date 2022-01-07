
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout_cpu {int cc_callout; } ;
struct callout {int dummy; } ;
typedef int cc_cpu ;


 struct callout_cpu* CC_CPU (int ) ;
 int M_CALLOUT ;
 int M_WAITOK ;
 int PCPU_GET (int ) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int callout_cpu_init (struct callout_cpu*,int ) ;
 int callwheelmask ;
 int callwheelsize ;
 int cpuid ;
 int curcpu ;
 int fls (int) ;
 int imin (scalar_t__,int) ;
 int malloc (int,int ,int ) ;
 scalar_t__ maxfiles ;
 scalar_t__ maxproc ;
 int memset (struct callout_cpu*,int ,int) ;
 int ncallout ;
 int pin_default_swi ;
 int pin_pcpu_swi ;
 int timeout_cpu ;

__attribute__((used)) static void
callout_callwheel_init(void *dummy)
{
 struct callout_cpu *cc;







 memset(CC_CPU(curcpu), 0, sizeof(cc_cpu));
 ncallout = imin(16 + maxproc + maxfiles, 18508);
 TUNABLE_INT_FETCH("kern.ncallout", &ncallout);





 callwheelsize = 1 << fls(ncallout);
 callwheelmask = callwheelsize - 1;




 TUNABLE_INT_FETCH("kern.pin_default_swi", &pin_default_swi);
 TUNABLE_INT_FETCH("kern.pin_pcpu_swi", &pin_pcpu_swi);







 timeout_cpu = PCPU_GET(cpuid);
 cc = CC_CPU(timeout_cpu);
 cc->cc_callout = malloc(ncallout * sizeof(struct callout),
     M_CALLOUT, M_WAITOK);
 callout_cpu_init(cc, timeout_cpu);
}
