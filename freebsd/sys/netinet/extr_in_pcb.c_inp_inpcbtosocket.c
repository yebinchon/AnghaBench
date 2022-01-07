
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {struct socket* inp_socket; } ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;

struct socket *
inp_inpcbtosocket(struct inpcb *inp)
{

 INP_WLOCK_ASSERT(inp);
 return (inp->inp_socket);
}
