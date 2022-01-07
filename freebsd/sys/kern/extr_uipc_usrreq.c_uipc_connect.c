
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int KASSERT (int,char*) ;
 struct thread* curthread ;
 int unp_connect (struct socket*,struct sockaddr*,struct thread*) ;

__attribute__((used)) static int
uipc_connect(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 int error;

 KASSERT(td == curthread, ("uipc_connect: td != curthread"));
 error = unp_connect(so, nam, td);
 return (error);
}
