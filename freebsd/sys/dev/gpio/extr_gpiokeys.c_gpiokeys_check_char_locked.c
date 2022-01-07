
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KBD_IS_ACTIVE (int *) ;
 int gpiokeys_check (int *) ;

__attribute__((used)) static int
gpiokeys_check_char_locked(keyboard_t *kbd)
{
 if (!KBD_IS_ACTIVE(kbd))
  return (0);

 return (gpiokeys_check(kbd));
}
