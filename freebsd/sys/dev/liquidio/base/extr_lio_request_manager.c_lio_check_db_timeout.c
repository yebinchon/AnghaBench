
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_tq {int work; int tq; int ctxul; struct octeon_device* ctxptr; } ;


 int __lio_check_db_timeout (struct octeon_device*,int ) ;
 int lio_ms_to_ticks (int) ;
 int taskqueue_enqueue_timeout (int ,int *,int ) ;

__attribute__((used)) static void
lio_check_db_timeout(void *arg, int pending)
{
 struct lio_tq *db_tq = (struct lio_tq *)arg;
 struct octeon_device *oct = db_tq->ctxptr;
 uint64_t iq_no = db_tq->ctxul;
 uint32_t delay = 10;

 __lio_check_db_timeout(oct, iq_no);
 taskqueue_enqueue_timeout(db_tq->tq, &db_tq->work,
      lio_ms_to_ticks(delay));
}
