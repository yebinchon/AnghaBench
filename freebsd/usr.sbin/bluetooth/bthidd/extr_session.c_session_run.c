
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr_l2cap {int l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int local ;
typedef int int32_t ;
typedef TYPE_2__* hid_device_p ;
typedef TYPE_3__* bthid_session_p ;
struct TYPE_11__ {scalar_t__ vkbd; scalar_t__ umouse; scalar_t__ ukbd; TYPE_1__* srv; int bdaddr; int ctrl; } ;
struct TYPE_10__ {scalar_t__ keyboard; scalar_t__ mouse; } ;
struct TYPE_9__ {scalar_t__ maxfd; int rfdset; scalar_t__ uinput; } ;


 int FD_SET (scalar_t__,int *) ;
 int LOG_ERR ;
 int O_RDWR ;
 int bt_ntoa (int *,int *) ;
 int errno ;
 TYPE_2__* get_hid_device (int *) ;
 int getsockname (int ,struct sockaddr*,int*) ;
 int hid_initialise (TYPE_3__*) ;
 scalar_t__ open (char*,int ) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ,int ,int ) ;
 scalar_t__ uinput_open_keyboard (TYPE_2__*,int *) ;
 scalar_t__ uinput_open_mouse (TYPE_2__*,int *) ;

int32_t
session_run(bthid_session_p s)
{
 hid_device_p d = get_hid_device(&s->bdaddr);
 struct sockaddr_l2cap local;
 socklen_t len;

 if (d->keyboard) {

  s->vkbd = open("/dev/vkbdctl", O_RDWR);
  if (s->vkbd < 0) {
   syslog(LOG_ERR, "Could not open /dev/vkbdctl " "for %s. %s (%d)", bt_ntoa(&s->bdaddr, ((void*)0)),

    strerror(errno), errno);
   return (-1);
  }

  FD_SET(s->vkbd, &s->srv->rfdset);
  if (s->vkbd > s->srv->maxfd)
   s->srv->maxfd = s->vkbd;
 }


 hid_initialise(s);


 len = sizeof(local);
 getsockname(s->ctrl, (struct sockaddr *) &local, &len);

 if (d->mouse && s->srv->uinput) {
  s->umouse = uinput_open_mouse(d, &local.l2cap_bdaddr);
  if (s->umouse < 0) {
   syslog(LOG_ERR, "Could not open /dev/uinput " "for %s. %s (%d)", bt_ntoa(&s->bdaddr,

    ((void*)0)), strerror(errno), errno);
   return (-1);
  }
 }
 if (d->keyboard && s->srv->uinput) {
  s->ukbd = uinput_open_keyboard(d, &local.l2cap_bdaddr);
  if (s->ukbd < 0) {
   syslog(LOG_ERR, "Could not open /dev/uinput " "for %s. %s (%d)", bt_ntoa(&s->bdaddr,

    ((void*)0)), strerror(errno), errno);
   return (-1);
  }

  FD_SET(s->ukbd, &s->srv->rfdset);
  if (s->ukbd > s->srv->maxfd)
   s->srv->maxfd = s->ukbd;
 }
 return (0);
}
