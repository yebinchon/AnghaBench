
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int un ;
struct TYPE_4__ {int valid; int server; int control; int * rsp; scalar_t__ omtu; scalar_t__ rsp_limit; scalar_t__ rsp_size; scalar_t__ rsp_cs; scalar_t__ priv; } ;
typedef TYPE_1__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct sockaddr_un {int sun_len; int l2cap_len; int maxfd; TYPE_1__* fdidx; int fdset; TYPE_1__* req; scalar_t__ imtu; int l2cap_psm; int l2cap_bdaddr; int l2cap_family; int sun_path; int sun_family; } ;
struct sockaddr_l2cap {int sun_len; int l2cap_len; int maxfd; TYPE_1__* fdidx; int fdset; TYPE_1__* req; scalar_t__ imtu; int l2cap_psm; int l2cap_bdaddr; int l2cap_family; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef struct sockaddr_un* server_p ;
typedef int l2 ;
typedef int int32_t ;
typedef int imtu ;
typedef TYPE_1__* fd_idx_p ;


 int AF_BLUETOOTH ;
 int AF_LOCAL ;
 int BLUETOOTH_PROTO_L2CAP ;
 int ENOENT ;
 int FD_SET (int,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int NG_HCI_BDADDR_ANY ;
 int NG_L2CAP_PSM_SDP ;
 int PF_BLUETOOTH ;
 int PF_LOCAL ;
 scalar_t__ SDP_LOCAL_MTU ;
 int SOCK_SEQPACKET ;
 int SOCK_STREAM ;
 int SOL_L2CAP ;
 int SO_L2CAP_IMTU ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int assert (int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ calloc (scalar_t__,int) ;
 scalar_t__ chmod (char const*,int) ;
 int close (int) ;
 int errno ;
 int free (TYPE_1__*) ;
 scalar_t__ getsockopt (int,int ,int ,scalar_t__*,int*) ;
 int htole16 (int ) ;
 scalar_t__ listen (int,int) ;
 int log_crit (char*,...) ;
 int memcpy (int *,int ,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 scalar_t__ provider_register_sd (int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ unlink (char const*) ;

int32_t
server_init(server_p srv, char const *control)
{
 struct sockaddr_un un;
 struct sockaddr_l2cap l2;
 int32_t unsock, l2sock;
 socklen_t size;
 uint16_t imtu;

 assert(srv != ((void*)0));
 assert(control != ((void*)0));

 memset(srv, 0, sizeof(*srv));


 if (unlink(control) < 0 && errno != ENOENT) {
  log_crit("Could not unlink(%s). %s (%d)",
   control, strerror(errno), errno);
  return (-1);
 }

 unsock = socket(PF_LOCAL, SOCK_STREAM, 0);
 if (unsock < 0) {
  log_crit("Could not create control socket. %s (%d)",
   strerror(errno), errno);
  return (-1);
 }

 memset(&un, 0, sizeof(un));
 un.sun_len = sizeof(un);
 un.sun_family = AF_LOCAL;
 strlcpy(un.sun_path, control, sizeof(un.sun_path));

 if (bind(unsock, (struct sockaddr *) &un, sizeof(un)) < 0) {
  log_crit("Could not bind control socket. %s (%d)",
   strerror(errno), errno);
  close(unsock);
  return (-1);
 }

 if (chmod(control, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH) < 0) {
  log_crit("Could not change permissions on control socket. " "%s (%d)", strerror(errno), errno);

  close(unsock);
  return (-1);
 }

 if (listen(unsock, 10) < 0) {
  log_crit("Could not listen on control socket. %s (%d)",
   strerror(errno), errno);
  close(unsock);
  return (-1);
 }


 l2sock = socket(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
 if (l2sock < 0) {
  log_crit("Could not create L2CAP socket. %s (%d)",
   strerror(errno), errno);
  close(unsock);
  return (-1);
 }

 size = sizeof(imtu);
        if (getsockopt(l2sock, SOL_L2CAP, SO_L2CAP_IMTU, &imtu, &size) < 0) {
  log_crit("Could not get L2CAP IMTU. %s (%d)",
   strerror(errno), errno);
  close(unsock);
  close(l2sock);
  return (-1);
        }

 memset(&l2, 0, sizeof(l2));
 l2.l2cap_len = sizeof(l2);
 l2.l2cap_family = AF_BLUETOOTH;
 memcpy(&l2.l2cap_bdaddr, NG_HCI_BDADDR_ANY, sizeof(l2.l2cap_bdaddr));
 l2.l2cap_psm = htole16(NG_L2CAP_PSM_SDP);

 if (bind(l2sock, (struct sockaddr *) &l2, sizeof(l2)) < 0) {
  log_crit("Could not bind L2CAP socket. %s (%d)",
   strerror(errno), errno);
  close(unsock);
  close(l2sock);
  return (-1);
 }

 if (listen(l2sock, 10) < 0) {
  log_crit("Could not listen on L2CAP socket. %s (%d)",
   strerror(errno), errno);
  close(unsock);
  close(l2sock);
  return (-1);
 }


 srv->imtu = (imtu > SDP_LOCAL_MTU)? imtu : SDP_LOCAL_MTU;
 srv->req = (uint8_t *) calloc(srv->imtu, sizeof(srv->req[0]));
 if (srv->req == ((void*)0)) {
  log_crit("Could not allocate request buffer");
  close(unsock);
  close(l2sock);
  return (-1);
 }


 srv->fdidx = (fd_idx_p) calloc(FD_SETSIZE, sizeof(srv->fdidx[0]));
 if (srv->fdidx == ((void*)0)) {
  log_crit("Could not allocate fd index");
  free(srv->req);
  close(unsock);
  close(l2sock);
  return (-1);
 }


 if (provider_register_sd(unsock) < 0) {
  log_crit("Could not register Service Discovery profile");
  free(srv->fdidx);
  free(srv->req);
  close(unsock);
  close(l2sock);
  return (-1);
 }






 FD_ZERO(&srv->fdset);
 srv->maxfd = (unsock > l2sock)? unsock : l2sock;

 FD_SET(unsock, &srv->fdset);
 srv->fdidx[unsock].valid = 1;
 srv->fdidx[unsock].server = 1;
 srv->fdidx[unsock].control = 1;
 srv->fdidx[unsock].priv = 0;
 srv->fdidx[unsock].rsp_cs = 0;
 srv->fdidx[unsock].rsp_size = 0;
 srv->fdidx[unsock].rsp_limit = 0;
 srv->fdidx[unsock].omtu = SDP_LOCAL_MTU;
 srv->fdidx[unsock].rsp = ((void*)0);

 FD_SET(l2sock, &srv->fdset);
 srv->fdidx[l2sock].valid = 1;
 srv->fdidx[l2sock].server = 1;
 srv->fdidx[l2sock].control = 0;
 srv->fdidx[l2sock].priv = 0;
 srv->fdidx[l2sock].rsp_cs = 0;
 srv->fdidx[l2sock].rsp_size = 0;
 srv->fdidx[l2sock].rsp_limit = 0;
 srv->fdidx[l2sock].omtu = 0;
 srv->fdidx[l2sock].rsp = ((void*)0);

 return (0);
}
