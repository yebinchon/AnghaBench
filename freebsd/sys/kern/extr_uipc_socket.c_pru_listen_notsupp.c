
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_listen_notsupp(struct socket *so, int backlog, struct thread *td)
{

 return EOPNOTSUPP;
}
