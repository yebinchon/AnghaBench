
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int HVKBD_LOCK () ;
 int HVKBD_UNLOCK () ;
 int KBD_ACTIVATE (int *) ;

__attribute__((used)) static int
hvkbd_enable(keyboard_t *kbd)
{
 HVKBD_LOCK();
 KBD_ACTIVATE(kbd);
 HVKBD_UNLOCK();
 return (0);
}
