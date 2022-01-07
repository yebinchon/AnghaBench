
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (int *) ;
 int akbd_check (int *) ;

__attribute__((used)) static int
akbd_check_char(keyboard_t *kbd)
{
 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 return (akbd_check(kbd));
}
