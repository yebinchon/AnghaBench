
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct ib_event {int event; } ;


 int ib_event_msg (int ) ;
 int sdp_dbg (struct socket*,char*,int ,int ) ;

__attribute__((used)) static void
sdp_qp_event_handler(struct ib_event *event, void *data)
{
 struct socket *sk = data;

 sdp_dbg(sk, "QP Event: %s (%d)", ib_event_msg(event->event),
     event->event);
}
