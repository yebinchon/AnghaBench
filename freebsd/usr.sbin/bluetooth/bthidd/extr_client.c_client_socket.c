
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_l2cap {int l2cap_len; scalar_t__ l2cap_psm; int l2cap_bdaddr; scalar_t__ l2cap_cid; int l2cap_bdaddr_type; int l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef int l2addr ;
typedef scalar_t__ int32_t ;
typedef int bdaddr_p ;


 int AF_BLUETOOTH ;
 int BDADDR_BREDR ;
 int BLUETOOTH_PROTO_L2CAP ;
 scalar_t__ EINPROGRESS ;
 int F_GETFL ;
 int F_SETFL ;
 scalar_t__ O_NONBLOCK ;
 int PF_BLUETOOTH ;
 int SOCK_SEQPACKET ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int close (scalar_t__) ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (scalar_t__,int ,...) ;
 scalar_t__ htole16 (int ) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static int
client_socket(bdaddr_p bdaddr, uint16_t psm)
{
 struct sockaddr_l2cap l2addr;
 int32_t s, m;

 s = socket(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
 if (s < 0)
  return (-1);

 m = fcntl(s, F_GETFL);
 if (m < 0) {
  close(s);
  return (-1);
 }

 if (fcntl(s, F_SETFL, (m|O_NONBLOCK)) < 0) {
  close(s);
  return (-1);
 }

 l2addr.l2cap_len = sizeof(l2addr);
 l2addr.l2cap_family = AF_BLUETOOTH;
 memset(&l2addr.l2cap_bdaddr, 0, sizeof(l2addr.l2cap_bdaddr));
 l2addr.l2cap_psm = 0;
 l2addr.l2cap_bdaddr_type = BDADDR_BREDR;
 l2addr.l2cap_cid = 0;

 if (bind(s, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0) {
  close(s);
  return (-1);
 }

 memcpy(&l2addr.l2cap_bdaddr, bdaddr, sizeof(l2addr.l2cap_bdaddr));
 l2addr.l2cap_psm = htole16(psm);

 if (connect(s, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0 &&
     errno != EINPROGRESS) {
  close(s);
  return (-1);
 }

 return (s);
}
