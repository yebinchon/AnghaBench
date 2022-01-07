
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int socklen_t ;
typedef scalar_t__ int32_t ;
typedef TYPE_1__* hid_device_p ;
typedef int error ;
typedef TYPE_2__* bthid_session_p ;
typedef TYPE_3__* bthid_server_p ;
struct TYPE_12__ {scalar_t__ maxfd; int rfdset; int wfdset; } ;
struct TYPE_11__ {int state; scalar_t__ ctrl; int intr; int bdaddr; } ;
struct TYPE_10__ {int new_device; int interrupt_psm; } ;


 int FD_CLR (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int LOG_ERR ;
 int OPEN ;
 int SOL_SOCKET ;
 int SO_ERROR ;


 int assert (int) ;
 int bt_ntoa (int *,int *) ;
 int client_socket (int *,int ) ;
 scalar_t__ connect_in_progress ;
 scalar_t__ errno ;
 TYPE_1__* get_hid_device (int *) ;
 scalar_t__ getsockopt (scalar_t__,int ,int ,scalar_t__*,int*) ;
 TYPE_2__* session_by_fd (TYPE_3__*,scalar_t__) ;
 int session_close (TYPE_2__*) ;
 int session_run (TYPE_2__*) ;
 int strerror (scalar_t__) ;
 int syslog (int ,char*,int ,int ,scalar_t__) ;
 int write_hids_file () ;

int32_t
client_connect(bthid_server_p srv, int32_t fd)
{
 bthid_session_p s;
 hid_device_p d;
 int32_t error;
 socklen_t len;

 assert(srv != ((void*)0));
 assert(fd >= 0);

 s = session_by_fd(srv, fd);
 assert(s != ((void*)0));

 d = get_hid_device(&s->bdaddr);
 assert(d != ((void*)0));

 error = 0;
 len = sizeof(error);
 if (getsockopt(fd, SOL_SOCKET, SO_ERROR, &error, &len) < 0) {
  syslog(LOG_ERR, "Could not get socket error for %s. %s (%d)",
   bt_ntoa(&s->bdaddr, ((void*)0)), strerror(errno), errno);
  session_close(s);
  connect_in_progress = 0;

  return (-1);
 }

 if (error != 0) {
  syslog(LOG_ERR, "Could not connect to %s. %s (%d)",
   bt_ntoa(&s->bdaddr, ((void*)0)), strerror(error), error);
  session_close(s);
  connect_in_progress = 0;

  return (0);
 }

 switch (s->state) {
 case 129:
  assert(s->ctrl == fd);
  assert(s->intr == -1);


  s->intr = client_socket(&s->bdaddr, d->interrupt_psm);
  if (s->intr < 0) {
   syslog(LOG_ERR, "Could not open interrupt channel " "to %s. %s (%d)", bt_ntoa(&s->bdaddr, ((void*)0)),

    strerror(errno), errno);
   session_close(s);
   connect_in_progress = 0;

   return (-1);
  }

  s->state = 128;

  FD_SET(s->intr, &srv->wfdset);
  if (s->intr > srv->maxfd)
   srv->maxfd = s->intr;

  d->new_device = 0;
  write_hids_file();
  break;

 case 128:
  assert(s->ctrl != -1);
  assert(s->intr == fd);

  s->state = OPEN;
  connect_in_progress = 0;


  if (session_run(s) < 0) {
   session_close(s);
   return (-1);
  }
  break;

 default:
  assert(0);
  break;
 }


 FD_CLR(fd, &srv->wfdset);
 FD_SET(fd, &srv->rfdset);

 return (0);
}
