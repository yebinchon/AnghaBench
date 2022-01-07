
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int scr_stat ;
struct TYPE_6__ {int z; } ;
struct TYPE_8__ {int id; int value; } ;
struct TYPE_7__ {TYPE_1__ data; TYPE_3__ event; } ;
struct TYPE_9__ {int operation; TYPE_2__ u; } ;
typedef TYPE_4__ mouse_info_t ;


 int MOUSE_BUTTON1DOWN ;
 int MOUSE_BUTTON2DOWN ;
 int MOUSE_BUTTON3DOWN ;


 int sc_mouse_input_button (int *,int) ;

__attribute__((used)) static void
sc_mouse_input(scr_stat *scp, mouse_info_t *mouse)
{

 switch (mouse->operation) {
 case 129:
  if (mouse->u.event.value > 0) {

   if (mouse->u.event.id & MOUSE_BUTTON1DOWN)
    sc_mouse_input_button(scp, 0);
   if (mouse->u.event.id & MOUSE_BUTTON2DOWN)
    sc_mouse_input_button(scp, 1);
   if (mouse->u.event.id & MOUSE_BUTTON3DOWN)
    sc_mouse_input_button(scp, 2);
  } else {

   sc_mouse_input_button(scp, 3);
  }
  break;
 case 128:
  if (mouse->u.data.z < 0) {

   sc_mouse_input_button(scp, 64);
  } else if (mouse->u.data.z > 0) {

   sc_mouse_input_button(scp, 65);
  }
  break;
 }
}
