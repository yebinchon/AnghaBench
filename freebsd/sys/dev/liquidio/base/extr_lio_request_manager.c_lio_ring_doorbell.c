
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int status; } ;
struct lio_instr_queue {int last_db_time; scalar_t__ fill_cnt; int doorbell_reg; } ;


 scalar_t__ LIO_DEV_RUNNING ;
 int __compiler_membar () ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int lio_write_csr32 (struct octeon_device*,int ,scalar_t__) ;
 int ticks ;

__attribute__((used)) static inline void
lio_ring_doorbell(struct octeon_device *oct, struct lio_instr_queue *iq)
{

 if (atomic_load_acq_int(&oct->status) == LIO_DEV_RUNNING) {
  lio_write_csr32(oct, iq->doorbell_reg, iq->fill_cnt);

  __compiler_membar();
  iq->fill_cnt = 0;
  iq->last_db_time = ticks;
  return;
 }
}
