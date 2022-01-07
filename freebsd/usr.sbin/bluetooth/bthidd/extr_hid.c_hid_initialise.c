
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct apple_state {int dummy; } ;
typedef scalar_t__ hid_device_p ;
typedef TYPE_1__* bthid_session_p ;
struct TYPE_3__ {int ctrl; int * ctx; int bdaddr; } ;


 scalar_t__ MAGIC_MOUSE (scalar_t__) ;
 int * calloc (int,int) ;
 scalar_t__ get_hid_device (int *) ;
 int write (int ,int*,int) ;

void
hid_initialise(bthid_session_p s)
{
 hid_device_p hid_device = get_hid_device(&s->bdaddr);

 if (hid_device && MAGIC_MOUSE(hid_device)) {

  static uint8_t rep[] = {0x53, 0xd7, 0x01};

  if ((s->ctx = calloc(1, sizeof(struct apple_state))) == ((void*)0))
   return;
  write(s->ctrl, rep, 3);
 }
}
