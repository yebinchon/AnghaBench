
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;


 int tcp_mtudisc (struct inpcb*,int) ;

__attribute__((used)) static struct inpcb *
tcp_mtudisc_notify(struct inpcb *inp, int error)
{

 tcp_mtudisc(inp, -1);
 return (inp);
}
