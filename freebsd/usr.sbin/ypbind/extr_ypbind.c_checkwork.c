
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _dom_binding {struct _dom_binding* dom_pnext; } ;


 int ping (struct _dom_binding*) ;
 struct _dom_binding* ypbindlist ;

void
checkwork(void)
{
 struct _dom_binding *ypdb;

 for (ypdb = ypbindlist; ypdb; ypdb = ypdb->dom_pnext)
  ping(ypdb);
}
