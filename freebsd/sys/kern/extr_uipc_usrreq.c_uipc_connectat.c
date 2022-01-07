
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int KASSERT (int,char*) ;
 struct thread* curthread ;
 int unp_connectat (int,struct socket*,struct sockaddr*,struct thread*) ;

__attribute__((used)) static int
uipc_connectat(int fd, struct socket *so, struct sockaddr *nam,
    struct thread *td)
{
 int error;

 KASSERT(td == curthread, ("uipc_connectat: td != curthread"));
 error = unp_connectat(fd, so, nam, td);
 return (error);
}
