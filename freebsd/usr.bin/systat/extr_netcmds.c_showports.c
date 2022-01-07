
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_name; } ;
struct pitem {int port; int onoff; } ;


 int TCP ;
 int UDP ;
 int addch (char) ;
 struct servent* getservbyport (int ,char*) ;
 int nports ;
 struct pitem* ports ;
 int printw (char*,int ) ;
 int protos ;

__attribute__((used)) static void
showports(void)
{
 struct pitem *p;
 struct servent *sp;

 for (p = ports; p < ports+nports; p++) {
  sp = getservbyport(p->port,
      protos == (TCP|UDP) ? 0 : protos == TCP ? "tcp" : "udp");
  if (!p->onoff)
   addch('!');
  if (sp)
   printw("%s ", sp->s_name);
  else
   printw("%d ", p->port);
 }
}
