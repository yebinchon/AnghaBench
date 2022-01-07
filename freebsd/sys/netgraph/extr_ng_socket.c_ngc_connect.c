
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int EINVAL ;
 int printf (char*) ;

__attribute__((used)) static int
ngc_connect(struct socket *so, struct sockaddr *nam, struct thread *td)
{




 printf("program tried to connect control socket to remote node\n");
 return (EINVAL);
}
