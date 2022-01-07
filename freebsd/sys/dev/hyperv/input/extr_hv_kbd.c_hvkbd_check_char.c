
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int HVKBD_LOCK () ;
 int HVKBD_UNLOCK () ;
 int hvkbd_check_char_locked (int *) ;

__attribute__((used)) static int
hvkbd_check_char(keyboard_t *kbd)
{
 int result;

 HVKBD_LOCK();
 result = hvkbd_check_char_locked(kbd);
 HVKBD_UNLOCK();

 return (result);
}
