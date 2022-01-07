
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int (* vmbus_event_proc ) (struct vmbus_softc*,int) ;} ;
struct vmbus_message {scalar_t__ msg_type; int msg_flags; } ;
struct trapframe {int dummy; } ;


 int FILTER_HANDLED ;
 scalar_t__ HYPERV_MSGTYPE_NONE ;
 scalar_t__ HYPERV_MSGTYPE_TIMER_EXPIRED ;
 int MSR_HV_EOM ;
 int VMBUS_MSGFLAG_PENDING ;
 struct vmbus_message* VMBUS_PCPU_GET (struct vmbus_softc*,int ,int) ;
 int VMBUS_PCPU_PTR (struct vmbus_softc*,int ,int) ;
 int VMBUS_SINT_MESSAGE ;
 int VMBUS_SINT_TIMER ;
 scalar_t__ __predict_false (int) ;
 int mb () ;
 int message ;
 int message_task ;
 int message_tq ;
 int stub1 (struct vmbus_softc*,int) ;
 int taskqueue_enqueue (struct vmbus_message*,int ) ;
 int vmbus_et_intr (struct trapframe*) ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static __inline int
vmbus_handle_intr1(struct vmbus_softc *sc, struct trapframe *frame, int cpu)
{
 volatile struct vmbus_message *msg;
 struct vmbus_message *msg_base;

 msg_base = VMBUS_PCPU_GET(sc, message, cpu);






 msg = msg_base + VMBUS_SINT_TIMER;
 if (msg->msg_type == HYPERV_MSGTYPE_TIMER_EXPIRED) {
  msg->msg_type = HYPERV_MSGTYPE_NONE;

  vmbus_et_intr(frame);
  mb();
  if (msg->msg_flags & VMBUS_MSGFLAG_PENDING) {




   wrmsr(MSR_HV_EOM, 0);
  }
 }
 sc->vmbus_event_proc(sc, cpu);




 msg = msg_base + VMBUS_SINT_MESSAGE;
 if (__predict_false(msg->msg_type != HYPERV_MSGTYPE_NONE)) {
  taskqueue_enqueue(VMBUS_PCPU_GET(sc, message_tq, cpu),
      VMBUS_PCPU_PTR(sc, message_task, cpu));
 }

 return (FILTER_HANDLED);
}
