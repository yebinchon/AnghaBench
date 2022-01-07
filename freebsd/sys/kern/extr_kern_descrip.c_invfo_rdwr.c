
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;


 int EOPNOTSUPP ;

int
invfo_rdwr(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{

 return (EOPNOTSUPP);
}
