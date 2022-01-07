
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtcon_port {int vtcport_flags; int vtcport_alt_break_state; struct virtqueue* vtcport_invq; struct tty* vtcport_tty; } ;
struct virtqueue {int dummy; } ;
struct tty {int dummy; } ;


 int VTCON_PORT_FLAG_CONSOLE ;
 int kdb_alt_break (char,int *) ;
 int ttydisc_rint (struct tty*,char,int ) ;
 int ttydisc_rint_done (struct tty*) ;
 char* virtqueue_dequeue (struct virtqueue*,int*) ;
 scalar_t__ virtqueue_enable_intr (struct virtqueue*) ;
 int virtqueue_notify (struct virtqueue*) ;
 int vtcon_port_requeue_buf (struct vtcon_port*,char*) ;

__attribute__((used)) static void
vtcon_port_in(struct vtcon_port *port)
{
 struct virtqueue *vq;
 struct tty *tp;
 char *buf;
 uint32_t len;
 int i, deq;

 tp = port->vtcport_tty;
 vq = port->vtcport_invq;

again:
 deq = 0;

 while ((buf = virtqueue_dequeue(vq, &len)) != ((void*)0)) {
  for (i = 0; i < len; i++) {





   ttydisc_rint(tp, buf[i], 0);
  }
  vtcon_port_requeue_buf(port, buf);
  deq++;
 }
 ttydisc_rint_done(tp);

 if (deq > 0)
  virtqueue_notify(vq);

 if (virtqueue_enable_intr(vq) != 0)
  goto again;
}
