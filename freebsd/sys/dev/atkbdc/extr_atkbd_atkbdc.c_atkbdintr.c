
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int kbdd_intr (int *,int *) ;

__attribute__((used)) static void
atkbdintr(void *arg)
{
 keyboard_t *kbd;

 kbd = (keyboard_t *)arg;
 kbdd_intr(kbd, ((void*)0));
}
