
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KBD_DEACTIVATE (int *) ;

__attribute__((used)) static int
sunkbd_disable(keyboard_t *kbd)
{

 KBD_DEACTIVATE(kbd);
 return (0);
}
