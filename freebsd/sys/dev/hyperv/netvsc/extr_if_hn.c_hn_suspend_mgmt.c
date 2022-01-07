
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct hn_softc {int hn_mgmt_taskq0; int hn_netchg_status; int hn_netchg_init; int hn_prichan; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int TASK_INIT (struct task*,int ,int ,struct hn_softc*) ;
 int hn_suspend_mgmt_taskfunc ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_drain_all (int ) ;
 int taskqueue_drain_timeout (int ,int *) ;
 int vmbus_chan_run_task (int ,struct task*) ;

__attribute__((used)) static void
hn_suspend_mgmt(struct hn_softc *sc)
{
 struct task task;

 HN_LOCK_ASSERT(sc);





 TASK_INIT(&task, 0, hn_suspend_mgmt_taskfunc, sc);
 vmbus_chan_run_task(sc->hn_prichan, &task);




 taskqueue_drain(sc->hn_mgmt_taskq0, &sc->hn_netchg_init);
 taskqueue_drain_timeout(sc->hn_mgmt_taskq0, &sc->hn_netchg_status);
 taskqueue_drain_all(sc->hn_mgmt_taskq0);
}
