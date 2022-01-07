
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_rcvoob_notsupp(struct socket *so, struct mbuf *m, int flags)
{

 return EOPNOTSUPP;
}
