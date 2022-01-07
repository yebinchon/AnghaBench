
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KBD_IS_VALID (int *) ;
 int ** keyboard ;
 int keyboards ;

keyboard_t *
kbd_get_keyboard(int index)
{
 if ((index < 0) || (index >= keyboards))
  return (((void*)0));
 if (keyboard[index] == ((void*)0))
  return (((void*)0));
 if (!KBD_IS_VALID(keyboard[index]))
  return (((void*)0));
 return (keyboard[index]);
}
