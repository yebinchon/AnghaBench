
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct malloc_type_stats {unsigned long mts_memalloced; int mts_size; int mts_numallocs; } ;
struct malloc_type_internal {scalar_t__* mti_probes; int mti_stats; } ;
struct malloc_type {struct malloc_type_internal* ks_handle; } ;
typedef int dtrace_malloc_probe ;


 size_t DTMALLOC_PROBE_MALLOC ;
 scalar_t__ __predict_false (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 int dtrace_malloc_enabled ;
 struct malloc_type_stats* zpcpu_get (int ) ;

__attribute__((used)) static void
malloc_type_zone_allocated(struct malloc_type *mtp, unsigned long size,
    int zindx)
{
 struct malloc_type_internal *mtip;
 struct malloc_type_stats *mtsp;

 critical_enter();
 mtip = mtp->ks_handle;
 mtsp = zpcpu_get(mtip->mti_stats);
 if (size > 0) {
  mtsp->mts_memalloced += size;
  mtsp->mts_numallocs++;
 }
 if (zindx != -1)
  mtsp->mts_size |= 1 << zindx;
 critical_exit();
}
