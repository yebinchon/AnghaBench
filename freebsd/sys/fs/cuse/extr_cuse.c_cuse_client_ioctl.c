
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cuse_client_command {int dummy; } ;
struct cuse_client {scalar_t__ ioctl_buffer; int fflags; struct cuse_client_command* cmds; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int CUSE_BUFFER_MAX ;
 long CUSE_BUF_MIN_PTR ;
 size_t CUSE_CMD_IOCTL ;
 int ENOMEM ;
 int EWOULDBLOCK ;
 int IOCPARM_LEN (unsigned long) ;
 unsigned long IOC_IN ;
 unsigned long IOC_OUT ;
 unsigned long IOC_VOID ;
 int IO_NDELAY ;
 int O_NONBLOCK ;
 int cuse_client_get (struct cuse_client**) ;
 int cuse_client_kqfilter_poll (struct cdev*,struct cuse_client*) ;
 int cuse_client_receive_command_locked (struct cuse_client_command*,scalar_t__,int) ;
 int cuse_client_send_command_locked (struct cuse_client_command*,long,unsigned long,int ,int ) ;
 int cuse_cmd_lock (struct cuse_client_command*) ;
 int cuse_cmd_unlock (struct cuse_client_command*) ;
 int cuse_convert_error (int) ;
 int cuse_lock () ;
 int cuse_unlock () ;
 int memcpy (scalar_t__,scalar_t__,int) ;

int
cuse_client_ioctl(struct cdev *dev, unsigned long cmd,
    caddr_t data, int fflag, struct thread *td)
{
 struct cuse_client_command *pccmd;
 struct cuse_client *pcc;
 int error;
 int len;

 error = cuse_client_get(&pcc);
 if (error != 0)
  return (error);

 len = IOCPARM_LEN(cmd);
 if (len > CUSE_BUFFER_MAX)
  return (ENOMEM);

 pccmd = &pcc->cmds[CUSE_CMD_IOCTL];

 cuse_cmd_lock(pccmd);

 if (cmd & (IOC_IN | IOC_VOID))
  memcpy(pcc->ioctl_buffer, data, len);







 cuse_lock();
 cuse_client_send_command_locked(pccmd,
     (len == 0) ? *(long *)data : CUSE_BUF_MIN_PTR,
     (unsigned long)cmd, pcc->fflags,
     (fflag & O_NONBLOCK) ? IO_NDELAY : 0);

 error = cuse_client_receive_command_locked(pccmd, data, len);
 cuse_unlock();

 if (error < 0) {
  error = cuse_convert_error(error);
 } else {
  error = 0;
 }

 if (cmd & IOC_OUT)
  memcpy(data, pcc->ioctl_buffer, len);

 cuse_cmd_unlock(pccmd);

 if (error == EWOULDBLOCK)
  cuse_client_kqfilter_poll(dev, pcc);

 return (error);
}
