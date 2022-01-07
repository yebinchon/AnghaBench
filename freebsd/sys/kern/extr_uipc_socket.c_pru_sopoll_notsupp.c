
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_sopoll_notsupp(struct socket *so, int events, struct ucred *cred,
    struct thread *td)
{

 return EOPNOTSUPP;
}
