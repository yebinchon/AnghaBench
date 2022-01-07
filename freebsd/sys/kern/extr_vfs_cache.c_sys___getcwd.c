
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct __getcwd_args {int buflen; int buf; } ;


 int MAXPATHLEN ;
 int UIO_USERSPACE ;
 int kern___getcwd (struct thread*,int ,int ,int ,int ) ;

int
sys___getcwd(struct thread *td, struct __getcwd_args *uap)
{

 return (kern___getcwd(td, uap->buf, UIO_USERSPACE, uap->buflen,
     MAXPATHLEN));
}
