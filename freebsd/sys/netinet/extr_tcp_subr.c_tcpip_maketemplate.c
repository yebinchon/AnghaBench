
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcptemp {int tt_t; int tt_ipgen; } ;
struct inpcb {int dummy; } ;


 int M_NOWAIT ;
 int M_TEMP ;
 struct tcptemp* malloc (int,int ,int ) ;
 int tcpip_fillheaders (struct inpcb*,void*,void*) ;

struct tcptemp *
tcpip_maketemplate(struct inpcb *inp)
{
 struct tcptemp *t;

 t = malloc(sizeof(*t), M_TEMP, M_NOWAIT);
 if (t == ((void*)0))
  return (((void*)0));
 tcpip_fillheaders(inp, (void *)&t->tt_ipgen, (void *)&t->tt_t);
 return (t);
}
