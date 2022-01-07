
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_cp_ring {int ring; } ;


 int BNXT_CP_DISABLE_DB (int *) ;
 int FILTER_SCHEDULE_THREAD ;

__attribute__((used)) static int
bnxt_handle_rx_cp(void *arg)
{
 struct bnxt_cp_ring *cpr = arg;


 BNXT_CP_DISABLE_DB(&cpr->ring);
 return FILTER_SCHEDULE_THREAD;
}
