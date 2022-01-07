
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;


 int ENOTTY ;



int
shm_ioctl(struct file *fp, u_long com, void *data, struct ucred *active_cred,
    struct thread *td)
{

 switch (com) {
 case 128:
 case 129:




  return (0);
 default:
  return (ENOTTY);
 }
}
