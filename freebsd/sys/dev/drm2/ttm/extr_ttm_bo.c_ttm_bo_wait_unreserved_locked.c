
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {TYPE_1__* glob; } ;
struct TYPE_2__ {int lru_lock; } ;


 int EINTR ;
 int ERESTART ;
 int ERESTARTSYS ;
 int PCATCH ;
 int msleep (struct ttm_buffer_object*,int *,int,char const*,int ) ;
 scalar_t__ ttm_bo_is_reserved (struct ttm_buffer_object*) ;

__attribute__((used)) static int
ttm_bo_wait_unreserved_locked(struct ttm_buffer_object *bo, bool interruptible)
{
 const char *wmsg;
 int flags, ret;

 ret = 0;
 if (interruptible) {
  flags = PCATCH;
  wmsg = "ttbowi";
 } else {
  flags = 0;
  wmsg = "ttbowu";
 }
 while (ttm_bo_is_reserved(bo)) {
  ret = -msleep(bo, &bo->glob->lru_lock, flags, wmsg, 0);
  if (ret == -EINTR || ret == -ERESTART)
   ret = -ERESTARTSYS;
  if (ret != 0)
   break;
 }
 return (ret);
}
