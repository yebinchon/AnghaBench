
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KBD_ACTIVATE (int *) ;
 int UKBD_LOCK () ;
 int UKBD_UNLOCK () ;

__attribute__((used)) static int
ukbd_enable(keyboard_t *kbd)
{

 UKBD_LOCK();
 KBD_ACTIVATE(kbd);
 UKBD_UNLOCK();

 return (0);
}
