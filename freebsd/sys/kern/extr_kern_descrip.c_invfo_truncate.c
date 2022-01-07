
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;
typedef int off_t ;


 int EINVAL ;

int
invfo_truncate(struct file *fp, off_t length, struct ucred *active_cred,
    struct thread *td)
{

 return (EINVAL);
}
