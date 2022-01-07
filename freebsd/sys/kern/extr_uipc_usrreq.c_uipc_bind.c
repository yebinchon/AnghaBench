
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int AT_FDCWD ;
 int uipc_bindat (int ,struct socket*,struct sockaddr*,struct thread*) ;

__attribute__((used)) static int
uipc_bind(struct socket *so, struct sockaddr *nam, struct thread *td)
{

 return (uipc_bindat(AT_FDCWD, so, nam, td));
}
