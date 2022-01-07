
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int (* pru_connect ) (struct socket*,struct sockaddr*,struct thread*) ;} ;


 TYPE_1__ raw_usrreqs ;
 int stub1 (struct socket*,struct sockaddr*,struct thread*) ;

__attribute__((used)) static int
rts_connect(struct socket *so, struct sockaddr *nam, struct thread *td)
{

 return (raw_usrreqs.pru_connect(so, nam, td));
}
