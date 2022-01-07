
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int keyboard_t ;


 int UKBD_LOCK () ;
 int UKBD_UNLOCK () ;
 int ukbd_read_char_locked (int *,int) ;

__attribute__((used)) static uint32_t
ukbd_read_char(keyboard_t *kbd, int wait)
{
 uint32_t keycode;

 UKBD_LOCK();
 keycode = ukbd_read_char_locked(kbd, wait);
 UKBD_UNLOCK();

 return (keycode);
}
