
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ttm_buffer_object {int seq_valid; scalar_t__ val_seq; int reserved; } ;


 int EAGAIN ;
 int EBUSY ;
 int EDEADLK ;
 scalar_t__ atomic_xchg (int *,int) ;
 int ttm_bo_wait_unreserved_locked (struct ttm_buffer_object*,int) ;
 scalar_t__ unlikely (int) ;
 int wakeup (struct ttm_buffer_object*) ;

int ttm_bo_reserve_nolru(struct ttm_buffer_object *bo,
     bool interruptible,
     bool no_wait, bool use_sequence, uint32_t sequence)
{
 int ret;

 while (unlikely(atomic_xchg(&bo->reserved, 1) != 0)) {



  if (use_sequence && bo->seq_valid) {



   if (unlikely(sequence == bo->val_seq))
    return -EDEADLK;




   if (unlikely(sequence - bo->val_seq < (1U << 31)))
    return -EAGAIN;
  }

  if (no_wait)
   return -EBUSY;

  ret = ttm_bo_wait_unreserved_locked(bo, interruptible);

  if (unlikely(ret))
   return ret;
 }

 if (use_sequence) {
  bool wake_up = 0;




  if (unlikely((bo->val_seq - sequence < (1U << 31))
        || !bo->seq_valid))
   wake_up = 1;
  bo->val_seq = sequence;
  bo->seq_valid = 1;
  if (wake_up)
   wakeup(bo);
 } else {
  bo->seq_valid = 0;
 }

 return 0;
}
