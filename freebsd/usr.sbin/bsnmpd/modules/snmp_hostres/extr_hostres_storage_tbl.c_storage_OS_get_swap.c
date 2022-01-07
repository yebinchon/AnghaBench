
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int swap_w_prefix ;
struct storage_entry {scalar_t__ allocationFailures; int used; int size; int allocationUnits; int * type; int flags; } ;
struct kvm_swap {int dummy; } ;
typedef int nswapdev ;
struct TYPE_5__ {int ksw_used; int ksw_total; int ksw_devname; } ;


 int HRDBG (char*,int) ;
 int HR_STORAGE_FOUND ;
 int LOG_ERR ;
 int OIDX_hrStorageVirtualMemory_c ;
 int SE_DESC_MLEN ;
 char* _PATH_DEV ;
 int assert (int ) ;
 int getpagesize () ;
 int hr_kd ;
 int kvm_getswapinfo (int ,TYPE_1__*,int,int ) ;
 int memset (char*,char,int) ;
 TYPE_1__* reallocf (TYPE_1__*,int) ;
 int snprintf (char*,int,char*,char*,int ) ;
 struct storage_entry* storage_entry_create (char*) ;
 struct storage_entry* storage_find_by_name (char*) ;
 TYPE_1__* swap_devs ;
 int swap_devs_len ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
storage_OS_get_swap(void)
{
 struct storage_entry *entry;
 char swap_w_prefix[SE_DESC_MLEN];
 size_t len;
 int nswapdev;

 len = sizeof(nswapdev);
 nswapdev = 0;

 if (sysctlbyname("vm.nswapdev", &nswapdev, &len, ((void*)0),0 ) < 0) {
  syslog(LOG_ERR,
      "hrStorageTable: sysctlbyname(\"vm.nswapdev\") "
      "failed. %m");
  assert(0);
  return;
 }

 if (nswapdev <= 0) {
  HRDBG("vm.nswapdev is %d", nswapdev);
  return;
 }

 if (nswapdev + 1 != (int)swap_devs_len || swap_devs == ((void*)0)) {
  swap_devs_len = nswapdev + 1;
  swap_devs = reallocf(swap_devs,
      swap_devs_len * sizeof(struct kvm_swap));

  assert(swap_devs != ((void*)0));
  if (swap_devs == ((void*)0)) {
   swap_devs_len = 0;
   return;
  }
 }

 nswapdev = kvm_getswapinfo(hr_kd, swap_devs, swap_devs_len, 0);
 if (nswapdev < 0) {
  syslog(LOG_ERR,
      "hrStorageTable: kvm_getswapinfo failed. %m\n");
  assert(0);
  return;
 }

 for (len = 0; len < (size_t)nswapdev; len++) {
  memset(&swap_w_prefix[0], '\0', sizeof(swap_w_prefix));
  snprintf(swap_w_prefix, sizeof(swap_w_prefix) - 1,
      "Swap:%s%s", _PATH_DEV, swap_devs[len].ksw_devname);

  entry = storage_find_by_name(swap_w_prefix);
  if (entry == ((void*)0))
   entry = storage_entry_create(swap_w_prefix);

  assert (entry != ((void*)0));
  if (entry == ((void*)0))
   return;

  entry->flags |= HR_STORAGE_FOUND;
  entry->type = &OIDX_hrStorageVirtualMemory_c;
  entry->allocationUnits = getpagesize();
  entry->size = swap_devs[len].ksw_total;
  entry->used = swap_devs[len].ksw_used;
  entry->allocationFailures = 0;
 }
}
