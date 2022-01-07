
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_msg {size_t msg_size; int msg_prio; } ;


 int M_MQUEUEDATA ;
 int M_WAITOK ;
 int copyin (char const*,char*,size_t) ;
 int free (struct mqueue_msg*,int ) ;
 struct mqueue_msg* malloc (size_t,int ,int ) ;

__attribute__((used)) static struct mqueue_msg *
mqueue_loadmsg(const char *msg_ptr, size_t msg_size, int msg_prio)
{
 struct mqueue_msg *msg;
 size_t len;
 int error;

 len = sizeof(struct mqueue_msg) + msg_size;
 msg = malloc(len, M_MQUEUEDATA, M_WAITOK);
 error = copyin(msg_ptr, ((char *)msg) + sizeof(struct mqueue_msg),
     msg_size);
 if (error) {
  free(msg, M_MQUEUEDATA);
  msg = ((void*)0);
 } else {
  msg->msg_size = msg_size;
  msg->msg_prio = msg_prio;
 }
 return (msg);
}
