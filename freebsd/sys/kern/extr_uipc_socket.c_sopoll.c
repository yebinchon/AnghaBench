
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct socket {TYPE_2__* so_proto; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sopoll ) (struct socket*,int,struct ucred*,struct thread*) ;} ;


 int stub1 (struct socket*,int,struct ucred*,struct thread*) ;

int
sopoll(struct socket *so, int events, struct ucred *active_cred,
    struct thread *td)
{





 return (so->so_proto->pr_usrreqs->pru_sopoll(so, events, active_cred,
     td));
}
