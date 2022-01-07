
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmar_unit {int inv_queue_avail; int inv_queue_tail; int inv_queue_full; scalar_t__ inv_queue_size; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_IQH_MASK ;
 int DMAR_IQH_REG ;
 int DMAR_IQ_DESCR_SZ ;
 int DMAR_IQ_DESCR_SZ_SHIFT ;
 int cpu_spinwait () ;
 int dmar_qi_advance_tail (struct dmar_unit*) ;
 int dmar_read4 (struct dmar_unit*,int ) ;

__attribute__((used)) static void
dmar_qi_ensure(struct dmar_unit *unit, int descr_count)
{
 uint32_t head;
 int bytes;

 DMAR_ASSERT_LOCKED(unit);
 bytes = descr_count << DMAR_IQ_DESCR_SZ_SHIFT;
 for (;;) {
  if (bytes <= unit->inv_queue_avail)
   break;

  head = dmar_read4(unit, DMAR_IQH_REG);
  head &= DMAR_IQH_MASK;
  unit->inv_queue_avail = head - unit->inv_queue_tail -
      DMAR_IQ_DESCR_SZ;
  if (head <= unit->inv_queue_tail)
   unit->inv_queue_avail += unit->inv_queue_size;
  if (bytes <= unit->inv_queue_avail)
   break;
  dmar_qi_advance_tail(unit);
  unit->inv_queue_full++;
  cpu_spinwait();
 }
 unit->inv_queue_avail -= bytes;
}
