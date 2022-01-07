
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cuse_client_command {int dummy; } ;
struct cuse_client {int fflags; TYPE_1__* server; struct cuse_client_command* cmds; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int selinfo; } ;


 size_t CUSE_CMD_POLL ;
 unsigned long CUSE_POLL_ERROR ;
 unsigned long CUSE_POLL_READ ;
 unsigned long CUSE_POLL_WRITE ;
 int IO_NDELAY ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int cuse_client_get (struct cuse_client**) ;
 int cuse_client_receive_command_locked (struct cuse_client_command*,int ,int ) ;
 int cuse_client_send_command_locked (struct cuse_client_command*,int ,unsigned long,int ,int ) ;
 int cuse_cmd_lock (struct cuse_client_command*) ;
 int cuse_cmd_unlock (struct cuse_client_command*) ;
 int cuse_lock () ;
 int cuse_unlock () ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
cuse_client_poll(struct cdev *dev, int events, struct thread *td)
{
 struct cuse_client_command *pccmd;
 struct cuse_client *pcc;
 unsigned long temp;
 int error;
 int revents;

 error = cuse_client_get(&pcc);
 if (error != 0)
  goto pollnval;

 temp = 0;

 if (events & (POLLPRI | POLLIN | POLLRDNORM))
  temp |= CUSE_POLL_READ;

 if (events & (POLLOUT | POLLWRNORM))
  temp |= CUSE_POLL_WRITE;

 if (events & POLLHUP)
  temp |= CUSE_POLL_ERROR;

 pccmd = &pcc->cmds[CUSE_CMD_POLL];

 cuse_cmd_lock(pccmd);


 if (temp != 0 && td != ((void*)0))
  selrecord(td, &pcc->server->selinfo);

 cuse_lock();
 cuse_client_send_command_locked(pccmd,
     0, temp, pcc->fflags, IO_NDELAY);

 error = cuse_client_receive_command_locked(pccmd, 0, 0);
 cuse_unlock();

 cuse_cmd_unlock(pccmd);

 if (error < 0) {
  goto pollnval;
 } else {
  revents = 0;
  if (error & CUSE_POLL_READ)
   revents |= (events & (POLLPRI | POLLIN | POLLRDNORM));
  if (error & CUSE_POLL_WRITE)
   revents |= (events & (POLLOUT | POLLWRNORM));
  if (error & CUSE_POLL_ERROR)
   revents |= (events & POLLHUP);
 }
 return (revents);

pollnval:

 return (events & (POLLHUP | POLLPRI | POLLIN |
     POLLRDNORM | POLLOUT | POLLWRNORM));
}
