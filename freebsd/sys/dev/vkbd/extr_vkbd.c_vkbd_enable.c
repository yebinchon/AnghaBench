
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KBD_ACTIVATE (int *) ;

__attribute__((used)) static int
vkbd_enable(keyboard_t *kbd)
{
 KBD_ACTIVATE(kbd);
 return (0);
}
