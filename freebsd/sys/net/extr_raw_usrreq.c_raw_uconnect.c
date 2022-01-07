
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
raw_uconnect(struct socket *so, struct sockaddr *nam, struct thread *td)
{

 return (EINVAL);
}
