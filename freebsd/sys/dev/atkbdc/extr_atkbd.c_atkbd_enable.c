
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KBD_ACTIVATE (int *) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
atkbd_enable(keyboard_t *kbd)
{
 int s;

 s = spltty();
 KBD_ACTIVATE(kbd);
 splx(s);
 return 0;
}
