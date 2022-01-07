
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int (* pru_disconnect ) (struct socket*) ;} ;


 TYPE_1__ raw_usrreqs ;
 int stub1 (struct socket*) ;

__attribute__((used)) static int
rts_disconnect(struct socket *so)
{

 return (raw_usrreqs.pru_disconnect(so));
}
