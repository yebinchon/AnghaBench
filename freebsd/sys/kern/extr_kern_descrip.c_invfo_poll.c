
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;


 int poll_no_poll (int) ;

int
invfo_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{

 return (poll_no_poll(events));
}
