
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_l2cap {int l2cap_len; int l2cap_bdaddr; scalar_t__ l2cap_cid; int l2cap_bdaddr_type; int l2cap_psm; int l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef int mru ;


 int AF_BLUETOOTH ;
 int BDADDR_BREDR ;
 int BLUETOOTH_PROTO_L2CAP ;
 int BNEP_MTU_MIN ;
 int EV_PERSIST ;
 int EV_READ ;
 int EXIT_FAILURE ;
 int PF_BLUETOOTH ;
 int SOCK_SEQPACKET ;
 int SOL_L2CAP ;
 int SO_L2CAP_IMTU ;
 int bdaddr_copy (int *,int *) ;
 int bind (int,struct sockaddr*,int) ;
 int event_add (int *,int *) ;
 int event_set (int *,int,int,int ,int *) ;
 int exit (int ) ;
 int htole16 (int ) ;
 int l2cap_psm ;
 int listen (int,int ) ;
 int local_bdaddr ;
 int log_err (char*,...) ;
 int log_info (char*) ;
 int memset (struct sockaddr_l2cap*,int ,int) ;
 int server_ev ;
 int server_fd ;
 int server_read ;
 int setsockopt (int,int ,int ,int *,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
server_open(void)
{
 struct sockaddr_l2cap sa;
 uint16_t mru;

 server_fd = socket(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
 if (server_fd == -1) {
  log_err("Could not open L2CAP socket: %m");
  exit(EXIT_FAILURE);
 }

 memset(&sa, 0, sizeof(sa));
 sa.l2cap_family = AF_BLUETOOTH;
 sa.l2cap_len = sizeof(sa);
 sa.l2cap_psm = htole16(l2cap_psm);
 sa.l2cap_bdaddr_type = BDADDR_BREDR;
 sa.l2cap_cid = 0;

 bdaddr_copy(&sa.l2cap_bdaddr, &local_bdaddr);
 if (bind(server_fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
  log_err("Could not bind server socket: %m");
  exit(EXIT_FAILURE);
 }

 mru = BNEP_MTU_MIN;
 if (setsockopt(server_fd, SOL_L2CAP,
     SO_L2CAP_IMTU, &mru, sizeof(mru)) == -1) {
  log_err("Could not set L2CAP IMTU (%d): %m", mru);
  exit(EXIT_FAILURE);
 }

 if (listen(server_fd, 0) == -1) {
  log_err("Could not listen on server socket: %m");
  exit(EXIT_FAILURE);
 }

 event_set(&server_ev, server_fd, EV_READ | EV_PERSIST, server_read, ((void*)0));
 if (event_add(&server_ev, ((void*)0)) == -1) {
  log_err("Could not add server event: %m");
  exit(EXIT_FAILURE);
 }

 log_info("server socket open");
}
