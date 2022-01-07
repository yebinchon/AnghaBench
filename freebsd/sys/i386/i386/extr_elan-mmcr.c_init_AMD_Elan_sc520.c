
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct elan_mmcr {int GPTMR2CTL; int CSPFS; int GPTMR1CTL; int GPTMR1MAXCMPA; int GPTMR1MAXCMPB; scalar_t__ GPTMR2MAXCMPA; } ;
struct TYPE_3__ {int ppscap; } ;


 int PPS_CAPTUREASSERT ;
 scalar_t__ bootverbose ;
 struct elan_mmcr volatile* elan_mmcr ;
 TYPE_1__ elan_pps ;
 int elan_timecounter ;
 int kernel_sysctlbyname (int *,char*,int *,int ,int*,int,int *,int ) ;
 scalar_t__ mmcrptr ;
 scalar_t__ pmap_mapdev (int,int) ;
 int pps_init (TYPE_1__*) ;
 int printf (char*,int,int) ;
 int tc_init (int *) ;
 int thread0 ;

void
init_AMD_Elan_sc520(void)
{
 u_int new;
 int i;

 mmcrptr = pmap_mapdev(0xfffef000, 0x1000);
 elan_mmcr = (volatile struct elan_mmcr *)mmcrptr;
 new = 1189161;
 i = kernel_sysctlbyname(&thread0, "machdep.i8254_freq",
     ((void*)0), 0, &new, sizeof new, ((void*)0), 0);
 if (bootverbose || 1)
  printf("sysctl machdep.i8254_freq=%d returns %d\n", new, i);


 elan_mmcr->GPTMR2MAXCMPA = 0;
 elan_mmcr->GPTMR2CTL = 0xc001;
 tc_init(&elan_timecounter);
}
