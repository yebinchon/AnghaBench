
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct malloc_type_stats {unsigned long mts_memfreed; int mts_numfrees; } ;
struct malloc_type_internal {scalar_t__* mti_probes; int mti_stats; } ;
struct malloc_type {struct malloc_type_internal* ks_handle; } ;
typedef int dtrace_malloc_probe ;


 size_t DTMALLOC_PROBE_FREE ;
 scalar_t__ __predict_false (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 int dtrace_malloc_enabled ;
 struct malloc_type_stats* zpcpu_get (int ) ;

void
malloc_type_freed(struct malloc_type *mtp, unsigned long size)
{
 struct malloc_type_internal *mtip;
 struct malloc_type_stats *mtsp;

 critical_enter();
 mtip = mtp->ks_handle;
 mtsp = zpcpu_get(mtip->mti_stats);
 mtsp->mts_memfreed += size;
 mtsp->mts_numfrees++;
 critical_exit();
}
