
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_int ;
struct bio {long bio_ma_n; int bio_flags; scalar_t__ bio_ma_offset; scalar_t__ bio_data; int bio_ma; TYPE_1__* bio_to; scalar_t__ bio_length; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int name; } ;


 int BIO_TRANSIENT_MAPPING ;
 int BIO_UNMAPPED ;
 int CTR2 (int ,char*,struct bio*,int ) ;
 int CTR3 (int ,char*,struct bio*,int ,scalar_t__) ;
 int EDEADLK ;
 int EJUSTRETURN ;
 int KASSERT (int,char*) ;
 int KTR_GEOM ;
 int M_BESTFIT ;
 int M_NOWAIT ;
 int OFF_TO_IDX (long) ;
 long PAGE_SIZE ;
 int atomic_add_int (int *,int) ;
 int atomic_add_long (int *,int) ;
 int hz ;
 int inflight_transient_maps ;
 int pause (char*,int) ;
 int pmap_qenter (scalar_t__,int ,int ) ;
 long round_page (scalar_t__) ;
 int transient_arena ;
 int transient_map_hard_failures ;
 scalar_t__ transient_map_retries ;
 int transient_map_soft_failures ;
 int transient_maps ;
 int unmapped_buf_allowed ;
 scalar_t__ vmem_alloc (int ,long,int,scalar_t__*) ;

__attribute__((used)) static int
g_io_transient_map_bio(struct bio *bp)
{
 vm_offset_t addr;
 long size;
 u_int retried;

 KASSERT(unmapped_buf_allowed, ("unmapped disabled"));

 size = round_page(bp->bio_ma_offset + bp->bio_length);
 KASSERT(size / PAGE_SIZE == bp->bio_ma_n, ("Bio too short %p", bp));
 addr = 0;
 retried = 0;
 atomic_add_long(&transient_maps, 1);
retry:
 if (vmem_alloc(transient_arena, size, M_BESTFIT | M_NOWAIT, &addr)) {
  if (transient_map_retries != 0 &&
      retried >= transient_map_retries) {
   CTR2(KTR_GEOM, "g_down cannot map bp %p provider %s",
       bp, bp->bio_to->name);
   atomic_add_int(&transient_map_hard_failures, 1);
   return (EDEADLK );
  } else {





   CTR3(KTR_GEOM, "g_down retrymap bp %p provider %s r %d",
       bp, bp->bio_to->name, retried);
   pause("g_d_tra", hz / 10);
   retried++;
   atomic_add_int(&transient_map_soft_failures, 1);
   goto retry;
  }
 }
 atomic_add_int(&inflight_transient_maps, 1);
 pmap_qenter((vm_offset_t)addr, bp->bio_ma, OFF_TO_IDX(size));
 bp->bio_data = (caddr_t)addr + bp->bio_ma_offset;
 bp->bio_flags |= BIO_TRANSIENT_MAPPING;
 bp->bio_flags &= ~BIO_UNMAPPED;
 return (EJUSTRETURN);
}
