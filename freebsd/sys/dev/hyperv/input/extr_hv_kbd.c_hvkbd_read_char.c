
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int keyboard_t ;


 int HVKBD_LOCK () ;
 int HVKBD_UNLOCK () ;
 int hvkbd_read_char_locked (int *,int) ;

__attribute__((used)) static uint32_t
hvkbd_read_char(keyboard_t *kbd, int wait)
{
 uint32_t keycode;

 HVKBD_LOCK();
 keycode = hvkbd_read_char_locked(kbd, wait);
 HVKBD_UNLOCK();

 return (keycode);
}
