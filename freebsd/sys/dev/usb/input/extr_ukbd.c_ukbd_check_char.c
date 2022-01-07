
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int UKBD_LOCK () ;
 int UKBD_UNLOCK () ;
 int ukbd_check_char_locked (int *) ;

__attribute__((used)) static int
ukbd_check_char(keyboard_t *kbd)
{
 int result;

 UKBD_LOCK();
 result = ukbd_check_char_locked(kbd);
 UKBD_UNLOCK();

 return (result);
}
