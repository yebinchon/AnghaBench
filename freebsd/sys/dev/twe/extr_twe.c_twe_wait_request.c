
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct twe_request {scalar_t__ tr_status; TYPE_1__* tr_sc; int tr_flags; } ;
struct TYPE_3__ {int twe_io_lock; } ;


 int PRIBIO ;
 scalar_t__ TWE_CMD_BUSY ;
 scalar_t__ TWE_CMD_COMPLETE ;
 int TWE_CMD_SLEEPER ;
 int TWE_IO_ASSERT_LOCKED (TYPE_1__*) ;
 int debug_called (int) ;
 int mtx_sleep (struct twe_request*,int *,int ,char*,int ) ;
 int twe_enqueue_ready (struct twe_request*) ;
 int twe_startio (TYPE_1__*) ;

__attribute__((used)) static int
twe_wait_request(struct twe_request *tr)
{

    debug_called(4);

    TWE_IO_ASSERT_LOCKED(tr->tr_sc);
    tr->tr_flags |= TWE_CMD_SLEEPER;
    tr->tr_status = TWE_CMD_BUSY;
    twe_enqueue_ready(tr);
    twe_startio(tr->tr_sc);
    while (tr->tr_status == TWE_CMD_BUSY)
 mtx_sleep(tr, &tr->tr_sc->twe_io_lock, PRIBIO, "twewait", 0);

    return(tr->tr_status != TWE_CMD_COMPLETE);
}
