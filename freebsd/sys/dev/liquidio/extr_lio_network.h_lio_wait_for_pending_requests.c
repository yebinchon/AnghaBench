
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {TYPE_1__* response_list; } ;
struct TYPE_2__ {int pending_req_count; } ;


 size_t LIO_ORDERED_SC_LIST ;
 int atomic_load_acq_int (int *) ;
 int lio_sleep_timeout (int) ;

__attribute__((used)) static inline int
lio_wait_for_pending_requests(struct octeon_device *oct)
{
 int i, pcount = 0;

 for (i = 0; i < 100; i++) {
  pcount = atomic_load_acq_int(
         &oct->response_list[LIO_ORDERED_SC_LIST].
          pending_req_count);
  if (pcount)
   lio_sleep_timeout(100);
  else
   break;
 }

 if (pcount)
  return (1);

 return (0);
}
