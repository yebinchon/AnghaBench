
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {struct com_s* t_sc; } ;
struct com_s {int fifo_image; int prev_modem_status; int last_modem_status; int flags; int int_ctl_port; int modem_status_port; int data_port; int line_status_port; scalar_t__ hasfifo; int loses_outints; int poll_output; int no_irq; int poll; } ;
struct cdev {int dummy; } ;


 scalar_t__ COM_IIR_TXRDYBUG (int ) ;
 int DELAY (int) ;
 int EIO ;
 int FIFO_RCV_RST ;
 int FIFO_XMT_RST ;
 int IER_EMSC ;
 int IER_ERLS ;
 int IER_ERXRDY ;
 int IER_ETXRDY ;
 scalar_t__ ISCALLOUT (struct cdev*) ;
 int LSR_RXRDY ;
 int MSR_DCD ;
 int com_fifo ;
 int inb (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int outb (int ,int) ;
 int sio_lock ;
 int sio_setreg (struct com_s*,int ,int) ;
 int siosettimeout () ;
 int ttyld_modem (struct tty*,int) ;

__attribute__((used)) static int
comopen(struct tty *tp, struct cdev *dev)
{
 struct com_s *com;
 int i;

 com = tp->t_sc;
 com->poll = com->no_irq;
 com->poll_output = com->loses_outints;
 if (com->hasfifo) {
  for (i = 0; i < 500; i++) {
   sio_setreg(com, com_fifo,
       FIFO_RCV_RST | FIFO_XMT_RST
       | com->fifo_image);
   DELAY(50);
   if (!(inb(com->line_status_port) & LSR_RXRDY))
    break;
   sio_setreg(com, com_fifo, 0);
   DELAY(50);
   (void) inb(com->data_port);
  }
  if (i == 500)
   return (EIO);
 }

 mtx_lock_spin(&sio_lock);
 (void) inb(com->line_status_port);
 (void) inb(com->data_port);
 com->prev_modem_status = com->last_modem_status
     = inb(com->modem_status_port);
 outb(com->int_ctl_port,
      IER_ERXRDY | IER_ERLS | IER_EMSC
      | (COM_IIR_TXRDYBUG(com->flags) ? 0 : IER_ETXRDY));
 mtx_unlock_spin(&sio_lock);
 siosettimeout();

 if (com->prev_modem_status & MSR_DCD || ISCALLOUT(dev))
  ttyld_modem(tp, 1);
 return (0);
}
