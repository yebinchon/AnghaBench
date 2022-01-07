
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_4__ {int kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;
typedef int KBDC ;


 int KBDC_DISABLE_KBD ;
 int KBDC_ENABLE_KBD ;
 int KBD_AUX_CONTROL_BITS ;
 int KBD_DISABLE_AUX_PORT ;
 int KBD_DISABLE_KBD_INT ;
 int KBD_ENABLE_KBD_PORT ;
 int KBD_KBD_CONTROL_BITS ;
 int KBD_TRANSLATION ;
 int send_kbd_command (int ,int ) ;
 int set_controller_command_byte (int ,int,int) ;

__attribute__((used)) static void
atkbd_shutdown_final(void *v)
{
}
