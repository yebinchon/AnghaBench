
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pitem {scalar_t__ port; int onoff; } ;
struct in_conninfo {scalar_t__ inc_lport; scalar_t__ inc_fport; } ;


 int nports ;
 struct pitem* ports ;

int
checkport(struct in_conninfo *inc)
{
 struct pitem *p;

 if (ports)
 for (p = ports; p < ports+nports; p++)
  if (p->port == inc->inc_lport || p->port == inc->inc_fport)
   return (p->onoff);
 return (1);
}
