
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uidinfo {int ui_ref; } ;


 int refcount_acquire (int *) ;

void
uihold(struct uidinfo *uip)
{

 refcount_acquire(&uip->ui_ref);
}
