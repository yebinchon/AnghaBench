
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int32_t ;
typedef TYPE_1__* bthid_session_p ;
struct TYPE_4__ {int bdaddr; } ;


 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int assert (int) ;
 int bt_ntoa (int *,int *) ;
 int session_close (TYPE_1__*) ;
 int syslog (int ,char*,int,...) ;

int32_t
hid_control(bthid_session_p s, uint8_t *data, int32_t len)
{
 assert(s != ((void*)0));
 assert(data != ((void*)0));
 assert(len > 0);

 switch (data[0] >> 4) {
        case 0:
  if (data[0] & 0xf)
   syslog(LOG_ERR, "Got handshake message with error " "response 0x%x from %s",

    data[0], bt_ntoa(&s->bdaddr, ((void*)0)));
  break;

 case 1:
  switch (data[0] & 0xf) {
  case 0:
   break;

  case 1:
  case 2:
   syslog(LOG_WARNING, "Device %s requested %s reset",
    bt_ntoa(&s->bdaddr, ((void*)0)),
    ((data[0] & 0xf) == 1)? "hard" : "soft");
   break;

  case 3:
   syslog(LOG_NOTICE, "Device %s requested Suspend",
    bt_ntoa(&s->bdaddr, ((void*)0)));
   break;

  case 4:
   syslog(LOG_NOTICE, "Device %s requested Exit Suspend",
    bt_ntoa(&s->bdaddr, ((void*)0)));
   break;

  case 5:
   syslog(LOG_NOTICE, "Device %s unplugged virtual cable",
    bt_ntoa(&s->bdaddr, ((void*)0)));
   session_close(s);
   break;

  default:
   syslog(LOG_WARNING, "Device %s sent unknown " "HID_Control message 0x%x",

    bt_ntoa(&s->bdaddr, ((void*)0)), data[0]);
   break;
  }
  break;

 default:
  syslog(LOG_WARNING, "Got unexpected message 0x%x on Control " "channel from %s", data[0], bt_ntoa(&s->bdaddr, ((void*)0)));

  break;
 }

 return (0);
}
