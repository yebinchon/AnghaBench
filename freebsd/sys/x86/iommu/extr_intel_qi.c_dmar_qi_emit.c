
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct dmar_unit {int inv_queue_tail; int inv_queue_size; scalar_t__ inv_queue; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_IQ_DESCR_SZ ;
 int KASSERT (int,char*) ;

__attribute__((used)) static void
dmar_qi_emit(struct dmar_unit *unit, uint64_t data1, uint64_t data2)
{

 DMAR_ASSERT_LOCKED(unit);
 *(volatile uint64_t *)(unit->inv_queue + unit->inv_queue_tail) = data1;
 unit->inv_queue_tail += DMAR_IQ_DESCR_SZ / 2;
 KASSERT(unit->inv_queue_tail <= unit->inv_queue_size,
     ("tail overflow 0x%x 0x%jx", unit->inv_queue_tail,
     (uintmax_t)unit->inv_queue_size));
 unit->inv_queue_tail &= unit->inv_queue_size - 1;
 *(volatile uint64_t *)(unit->inv_queue + unit->inv_queue_tail) = data2;
 unit->inv_queue_tail += DMAR_IQ_DESCR_SZ / 2;
 KASSERT(unit->inv_queue_tail <= unit->inv_queue_size,
     ("tail overflow 0x%x 0x%jx", unit->inv_queue_tail,
     (uintmax_t)unit->inv_queue_size));
 unit->inv_queue_tail &= unit->inv_queue_size - 1;
}
