
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmar_unit {int inv_waitd_seq_hw_phys; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_IQ_DESCR_WAIT_FN ;
 int DMAR_IQ_DESCR_WAIT_ID ;
 int DMAR_IQ_DESCR_WAIT_IF ;
 int DMAR_IQ_DESCR_WAIT_SD (int ) ;
 int DMAR_IQ_DESCR_WAIT_SW ;
 int dmar_qi_emit (struct dmar_unit*,int,int ) ;

__attribute__((used)) static void
dmar_qi_emit_wait_descr(struct dmar_unit *unit, uint32_t seq, bool intr,
    bool memw, bool fence)
{

 DMAR_ASSERT_LOCKED(unit);
 dmar_qi_emit(unit, DMAR_IQ_DESCR_WAIT_ID |
     (intr ? DMAR_IQ_DESCR_WAIT_IF : 0) |
     (memw ? DMAR_IQ_DESCR_WAIT_SW : 0) |
     (fence ? DMAR_IQ_DESCR_WAIT_FN : 0) |
     (memw ? DMAR_IQ_DESCR_WAIT_SD(seq) : 0),
     memw ? unit->inv_waitd_seq_hw_phys : 0);
}
