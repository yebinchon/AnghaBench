
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int msg; scalar_t__ completed; } ;


 int DELAY (int) ;
 int OPAL_BUSY ;
 int OPAL_CHECK_ASYNC_COMPLETION ;
 int OPAL_SUCCESS ;
 int atomic_thread_fence_acq () ;
 TYPE_1__* completions ;
 int memcpy (void*,int *,int ) ;
 int opal_call (int ,int ,int ,int) ;
 int vtophys (void*) ;

int
opal_wait_completion(void *buf, uint64_t size, int token)
{
 int err;

 do {
  err = opal_call(OPAL_CHECK_ASYNC_COMPLETION,
      vtophys(buf), size, token);
  if (err == OPAL_BUSY) {
   if (completions[token].completed) {
    atomic_thread_fence_acq();
    memcpy(buf, &completions[token].msg, size);
    return (OPAL_SUCCESS);
   }
  }
  DELAY(100);
 } while (err == OPAL_BUSY);

 return (err);
}
