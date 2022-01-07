
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kbd_find_keyboard2 (char*,int,int ) ;

int
kbd_find_keyboard(char *driver, int unit)
{
 return (kbd_find_keyboard2(driver, unit, 0));
}
