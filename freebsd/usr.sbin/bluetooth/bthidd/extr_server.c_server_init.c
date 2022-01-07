
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_l2cap {int l2cap_len; void* l2cap_psm; scalar_t__ l2cap_cid; int l2cap_bdaddr_type; int l2cap_bdaddr; int l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef int l2addr ;
typedef int int32_t ;
typedef TYPE_1__* bthid_server_p ;
struct TYPE_3__ {int ctrl; int intr; int cons; int maxfd; int rfdset; int bdaddr; int sessions; int wfdset; } ;


 int AF_BLUETOOTH ;
 int BDADDR_BREDR ;
 int BLUETOOTH_PROTO_L2CAP ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int LIST_INIT (int *) ;
 int LOG_ERR ;
 int O_RDWR ;
 int PF_BLUETOOTH ;
 int SOCK_SEQPACKET ;
 int assert (int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 void* htole16 (int) ;
 scalar_t__ listen (int,int) ;
 int max (int,int) ;
 int memcpy (int *,int *,int) ;
 int open (char*,int ) ;
 void* socket (int ,int ,int ) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ,int ) ;

int32_t
server_init(bthid_server_p srv)
{
 struct sockaddr_l2cap l2addr;

 assert(srv != ((void*)0));

 srv->ctrl = srv->intr = -1;
 FD_ZERO(&srv->rfdset);
 FD_ZERO(&srv->wfdset);
 LIST_INIT(&srv->sessions);


 srv->cons = open("/dev/consolectl", O_RDWR);
 if (srv->cons < 0) {
  syslog(LOG_ERR, "Could not open /dev/consolectl. %s (%d)",
   strerror(errno), errno);
  return (-1);
 }


 srv->ctrl = socket(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
 if (srv->ctrl < 0) {
  syslog(LOG_ERR, "Could not create control L2CAP socket. " "%s (%d)", strerror(errno), errno);

  close(srv->cons);
  return (-1);
 }

 l2addr.l2cap_len = sizeof(l2addr);
 l2addr.l2cap_family = AF_BLUETOOTH;
 memcpy(&l2addr.l2cap_bdaddr, &srv->bdaddr, sizeof(l2addr.l2cap_bdaddr));
 l2addr.l2cap_psm = htole16(0x11);
 l2addr.l2cap_bdaddr_type = BDADDR_BREDR;
 l2addr.l2cap_cid = 0;

 if (bind(srv->ctrl, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0) {
  syslog(LOG_ERR, "Could not bind control L2CAP socket. " "%s (%d)", strerror(errno), errno);

  close(srv->ctrl);
  close(srv->cons);
  return (-1);
 }

 if (listen(srv->ctrl, 10) < 0) {
  syslog(LOG_ERR, "Could not listen on control L2CAP socket. " "%s (%d)", strerror(errno), errno);

  close(srv->ctrl);
  close(srv->cons);
  return (-1);
 }


 srv->intr = socket(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
 if (srv->intr < 0) {
  syslog(LOG_ERR, "Could not create interrupt L2CAP socket. " "%s (%d)", strerror(errno), errno);

  close(srv->ctrl);
  close(srv->cons);
  return (-1);
 }

 l2addr.l2cap_psm = htole16(0x13);

 if (bind(srv->intr, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0) {
  syslog(LOG_ERR, "Could not bind interrupt L2CAP socket. " "%s (%d)", strerror(errno), errno);

  close(srv->intr);
  close(srv->ctrl);
  close(srv->cons);
  return (-1);
 }

 if (listen(srv->intr, 10) < 0) {
  syslog(LOG_ERR, "Could not listen on interrupt L2CAP socket. " "%s (%d)", strerror(errno), errno);

  close(srv->intr);
  close(srv->ctrl);
  close(srv->cons);
  return (-1);
 }

 FD_SET(srv->ctrl, &srv->rfdset);
 FD_SET(srv->intr, &srv->rfdset);
 srv->maxfd = max(srv->ctrl, srv->intr);

 return (0);
}
