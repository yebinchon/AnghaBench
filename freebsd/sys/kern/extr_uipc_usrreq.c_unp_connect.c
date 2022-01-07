
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int AT_FDCWD ;
 int unp_connectat (int ,struct socket*,struct sockaddr*,struct thread*) ;

__attribute__((used)) static int
unp_connect(struct socket *so, struct sockaddr *nam, struct thread *td)
{

 return (unp_connectat(AT_FDCWD, so, nam, td));
}
