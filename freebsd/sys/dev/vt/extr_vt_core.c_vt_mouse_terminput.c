
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vt_device {int dummy; } ;
struct TYPE_4__ {int z; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct TYPE_6__ {TYPE_2__ u; } ;


 int MOUSE_BUTTON1DOWN ;
 int MOUSE_BUTTON2DOWN ;
 int MOUSE_BUTTON3DOWN ;


 TYPE_3__* mouse ;
 int sc_mouse_input_button (struct vt_device*,int) ;
 int vt_mouse_terminput_button (struct vt_device*,int) ;

__attribute__((used)) static void
vt_mouse_terminput(struct vt_device *vd, int type, int x, int y, int event,
    int cnt)
{

 switch (type) {
 case 129:
  if (cnt > 0) {

   if (event & MOUSE_BUTTON1DOWN)
    vt_mouse_terminput_button(vd, 0);
   if (event & MOUSE_BUTTON2DOWN)
    vt_mouse_terminput_button(vd, 1);
   if (event & MOUSE_BUTTON3DOWN)
    vt_mouse_terminput_button(vd, 2);
  } else {

   vt_mouse_terminput_button(vd, 3);
  }
  break;
 }
}
