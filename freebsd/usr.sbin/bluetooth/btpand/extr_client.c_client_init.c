
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_l2cap {int l2cap_len; int l2cap_bdaddr; int l2cap_psm; scalar_t__ l2cap_cid; int l2cap_bdaddr_type; int l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sa ;
typedef int n ;
typedef int mtu ;
typedef int mru ;
struct TYPE_6__ {int mru; int mtu; int state; int laddr; int raddr; int recv; int send; } ;
typedef TYPE_1__ channel_t ;


 int AF_BLUETOOTH ;
 int BDADDR_BREDR ;
 int BLUETOOTH_PROTO_L2CAP ;
 int BNEP_MTU_MIN ;
 int BNEP_SETUP_CONNECTION_REQUEST ;
 int CHANNEL_WAIT_CONNECT_RSP ;
 int EXIT_FAILURE ;
 int PF_BLUETOOTH ;
 int SDP_SERVICE_CLASS_PANU ;
 int SOCK_SEQPACKET ;
 int SOL_L2CAP ;
 int SOL_SOCKET ;
 int SO_L2CAP_IMTU ;
 int SO_L2CAP_OMTU ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int SO_SNDLOWAT ;
 int b2eaddr (int ,int *) ;
 scalar_t__ bdaddr_any (int *) ;
 int bdaddr_copy (int *,int *) ;
 int bind (int,struct sockaddr*,int) ;
 int bnep_recv ;
 int bnep_send ;
 int bnep_send_control (TYPE_1__*,int ,int,int ,int ) ;
 int bt_ntoa (int *,int *) ;
 TYPE_1__* channel_alloc () ;
 int channel_open (TYPE_1__*,int) ;
 int channel_timeout (TYPE_1__*,int) ;
 int client_query () ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int exit (int ) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int htole16 (int ) ;
 int l2cap_psm ;
 int local_bdaddr ;
 int log_err (char*,...) ;
 int log_info (char*,int,...) ;
 int memset (struct sockaddr_l2cap*,int ,int) ;
 int remote_bdaddr ;
 int service_class ;
 scalar_t__ service_name ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

void
client_init(void)
{
 struct sockaddr_l2cap sa;
 channel_t *chan;
 socklen_t len;
 int fd, n;
 uint16_t mru, mtu;

 if (bdaddr_any(&remote_bdaddr))
  return;

 if (service_name)
  client_query();

 fd = socket(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
 if (fd == -1) {
  log_err("Could not open L2CAP socket: %m");
  exit(EXIT_FAILURE);
 }

 memset(&sa, 0, sizeof(sa));
 sa.l2cap_family = AF_BLUETOOTH;
 sa.l2cap_len = sizeof(sa);
 sa.l2cap_bdaddr_type = BDADDR_BREDR;
 sa.l2cap_cid = 0;

 bdaddr_copy(&sa.l2cap_bdaddr, &local_bdaddr);
 if (bind(fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
  log_err("Could not bind client socket: %m");
  exit(EXIT_FAILURE);
 }

 mru = BNEP_MTU_MIN;
 if (setsockopt(fd, SOL_L2CAP, SO_L2CAP_IMTU, &mru, sizeof(mru)) == -1) {
  log_err("Could not set L2CAP IMTU (%d): %m", mru);
  exit(EXIT_FAILURE);
 }

 log_info("Opening connection to service 0x%4.4x at %s",
     service_class, bt_ntoa(&remote_bdaddr, ((void*)0)));

 sa.l2cap_psm = htole16(l2cap_psm);
 bdaddr_copy(&sa.l2cap_bdaddr, &remote_bdaddr);
 if (connect(fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
  log_err("Could not connect: %m");
  exit(EXIT_FAILURE);
 }

 len = sizeof(mru);
 if (getsockopt(fd, SOL_L2CAP, SO_L2CAP_IMTU, &mru, &len) == -1) {
  log_err("Could not get IMTU: %m");
  exit(EXIT_FAILURE);
 }
 if (mru < BNEP_MTU_MIN) {
  log_err("L2CAP IMTU too small (%d)", mru);
  exit(EXIT_FAILURE);
 }

 len = sizeof(n);
 if (getsockopt(fd, SOL_SOCKET, SO_RCVBUF, &n, &len) == -1) {
  log_err("Could not read SO_RCVBUF");
  exit(EXIT_FAILURE);
 }
 if (n < (mru * 10)) {
  n = mru * 10;
  if (setsockopt(fd, SOL_SOCKET, SO_RCVBUF, &n, sizeof(n)) == -1)
   log_info("Could not increase SO_RCVBUF (from %d)", n);
 }

 len = sizeof(mtu);
 if (getsockopt(fd, SOL_L2CAP, SO_L2CAP_OMTU, &mtu, &len) == -1) {
  log_err("Could not get L2CAP OMTU: %m");
  exit(EXIT_FAILURE);
 }
 if (mtu < BNEP_MTU_MIN) {
  log_err("L2CAP OMTU too small (%d)", mtu);
  exit(EXIT_FAILURE);
 }

 len = sizeof(n);
 if (getsockopt(fd, SOL_SOCKET, SO_SNDBUF, &n, &len) == -1) {
  log_err("Could not get socket send buffer size: %m");
  close(fd);
  return;
 }
 if (n < (mtu * 2)) {
  n = mtu * 2;
  if (setsockopt(fd, SOL_SOCKET, SO_SNDBUF, &n, sizeof(n)) == -1) {
   log_err("Could not set socket send buffer size (%d): %m", n);
   close(fd);
   return;
  }
 }
 n = mtu;
 if (setsockopt(fd, SOL_SOCKET, SO_SNDLOWAT, &n, sizeof(n)) == -1) {
  log_err("Could not set socket low water mark (%d): %m", n);
  close(fd);
  return;
 }

 chan = channel_alloc();
 if (chan == ((void*)0))
  exit(EXIT_FAILURE);

 chan->send = bnep_send;
 chan->recv = bnep_recv;
 chan->mru = mru;
 chan->mtu = mtu;
 b2eaddr(chan->raddr, &remote_bdaddr);
 b2eaddr(chan->laddr, &local_bdaddr);
 chan->state = CHANNEL_WAIT_CONNECT_RSP;
 channel_timeout(chan, 10);
 if (!channel_open(chan, fd))
  exit(EXIT_FAILURE);

 bnep_send_control(chan, BNEP_SETUP_CONNECTION_REQUEST,
     2, service_class, SDP_SERVICE_CLASS_PANU);
}
