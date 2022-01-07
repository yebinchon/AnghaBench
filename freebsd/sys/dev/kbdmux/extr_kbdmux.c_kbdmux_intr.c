
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_9__ {TYPE_1__ kb_callback; } ;
typedef TYPE_2__ keyboard_t ;


 int FALSE ;
 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int NOKEY ;
 int kbdmux_read_char (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
kbdmux_intr(keyboard_t *kbd, void *arg)
{
 int c;

 if (KBD_IS_ACTIVE(kbd) && KBD_IS_BUSY(kbd)) {

  (*kbd->kb_callback.kc_func)(kbd, KBDIO_KEYINPUT,
         kbd->kb_callback.kc_arg);
 } else {

  do {
   c = kbdmux_read_char(kbd, FALSE);
  } while (c != NOKEY);
 }

 return (0);
}
