
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CPUID_TO_FAMILY (int ) ;
 scalar_t__ CPU_VENDOR_AMD ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int MCG_CAP_COUNT ;
 int MTX_SPIN ;
 int OID_AUTO ;
 int STAILQ_INIT (int *) ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int TASK_INIT (int *,int ,int ,int *) ;
 int _hw_mca ;
 scalar_t__ amd10h_L1TP ;
 int amd_thresholding_setup () ;
 scalar_t__ amd_thresholding_supported () ;
 int callout_init (int *,int) ;
 int cmci_setup () ;
 scalar_t__ cmci_supported (int) ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int mca_banks ;
 int mca_count ;
 int mca_freelist ;
 int mca_lock ;
 int mca_maxcount ;
 int mca_pending ;
 int mca_records ;
 int mca_resize ;
 int mca_resize_freelist () ;
 int mca_resize_task ;
 int mca_scan_cpus ;
 int mca_scan_task ;
 int mca_ticks ;
 int mca_timer ;
 int mtx_init (int *,char*,int *,int ) ;
 int sysctl_mca_maxcount ;
 int sysctl_mca_records ;
 int sysctl_mca_scan ;
 int sysctl_positive_int ;
 int workaround_erratum383 ;

__attribute__((used)) static void
mca_setup(uint64_t mcg_cap)
{






 if (cpu_vendor_id == CPU_VENDOR_AMD &&
     CPUID_TO_FAMILY(cpu_id) == 0x10 && amd10h_L1TP)
  workaround_erratum383 = 1;

 mca_banks = mcg_cap & MCG_CAP_COUNT;
 mtx_init(&mca_lock, "mca", ((void*)0), MTX_SPIN);
 STAILQ_INIT(&mca_records);
 STAILQ_INIT(&mca_pending);
 TASK_INIT(&mca_scan_task, 0, mca_scan_cpus, ((void*)0));
 callout_init(&mca_timer, 1);
 STAILQ_INIT(&mca_freelist);
 TASK_INIT(&mca_resize_task, 0, mca_resize, ((void*)0));
 mca_resize_freelist();
 SYSCTL_ADD_INT(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_mca), OID_AUTO,
     "count", CTLFLAG_RD, (int *)(uintptr_t)&mca_count, 0,
     "Record count");
 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_mca), OID_AUTO,
     "maxcount", CTLTYPE_INT | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
     &mca_maxcount, 0, sysctl_mca_maxcount, "I",
     "Maximum record count (-1 is unlimited)");
 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_mca), OID_AUTO,
     "interval", CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, &mca_ticks,
     0, sysctl_positive_int, "I",
     "Periodic interval in seconds to scan for machine checks");
 SYSCTL_ADD_NODE(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_mca), OID_AUTO,
     "records", CTLFLAG_RD, sysctl_mca_records, "Machine check records");
 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_mca), OID_AUTO,
     "force_scan", CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, ((void*)0), 0,
     sysctl_mca_scan, "I", "Force an immediate scan for machine checks");






}
