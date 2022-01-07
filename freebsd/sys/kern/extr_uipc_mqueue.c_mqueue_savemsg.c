
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_msg {int msg_size; char msg_prio; } ;


 int copyout (char*,...) ;

__attribute__((used)) static int
mqueue_savemsg(struct mqueue_msg *msg, char *msg_ptr, int *msg_prio)
{
 int error;

 error = copyout(((char *)msg) + sizeof(*msg), msg_ptr,
  msg->msg_size);
 if (error == 0 && msg_prio != ((void*)0))
  error = copyout(&msg->msg_prio, msg_prio, sizeof(int));
 return (error);
}
