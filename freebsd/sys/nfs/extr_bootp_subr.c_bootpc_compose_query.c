
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vendor_client ;
typedef int uint8_t ;
typedef unsigned char uint32_t ;
struct thread {int dummy; } ;
struct TYPE_5__ {int htype; unsigned char* vend; int flags; scalar_t__ secs; int chaddr; int xid; scalar_t__ hops; int hlen; int op; } ;
struct TYPE_4__ {unsigned char yiaddr; } ;
struct bootpc_ifcontext {int state; unsigned char dhcpserver; TYPE_2__ call; int gotdhcpserver; TYPE_1__ reply; void* dhcpquerytype; TYPE_3__* sdl; int xid; scalar_t__ gotrootpath; } ;
struct bootp_packet {int dummy; } ;
typedef int caddr_t ;
struct TYPE_6__ {int sdl_alen; } ;


 int BOOTP_REQUEST ;
 void* DHCP_DISCOVER ;
 void* DHCP_NOMSG ;
 void* DHCP_REQUEST ;


 int LLADDR (TYPE_3__*) ;
 char* MACHINE ;
 int TAG_DHCP_LEASETIME ;
 void* TAG_DHCP_MSGTYPE ;
 int TAG_DHCP_REQ_ADDR ;
 int TAG_DHCP_SERVERID ;
 unsigned char TAG_END ;
 int TAG_MAXMSGSIZE ;
 int TAG_VENDOR_INDENTIFIER ;
 int bcopy (int ,int *,int ) ;
 scalar_t__ bootpc_ifctx_isunresolved (struct bootpc_ifcontext*) ;
 int bzero (int ,int) ;
 unsigned char htonl (int) ;
 int htons (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 char* osrelease ;
 char* ostype ;
 int snprintf (unsigned char*,int,char*,char*,char*,char*) ;
 int strlen (unsigned char*) ;
 int txdr_unsigned (int ) ;

__attribute__((used)) static void
bootpc_compose_query(struct bootpc_ifcontext *ifctx, struct thread *td)
{
 unsigned char *vendp;
 unsigned char vendor_client[64];
 uint32_t leasetime;
 uint8_t vendor_client_len;

 ifctx->gotrootpath = 0;

 bzero((caddr_t) &ifctx->call, sizeof(ifctx->call));


 ifctx->call.op = BOOTP_REQUEST;
 ifctx->call.htype = 1;
 ifctx->call.hlen = ifctx->sdl->sdl_alen;
 ifctx->call.hops = 0;
 if (bootpc_ifctx_isunresolved(ifctx) != 0)
  ifctx->xid++;
 ifctx->call.xid = txdr_unsigned(ifctx->xid);
 bcopy(LLADDR(ifctx->sdl), &ifctx->call.chaddr, ifctx->sdl->sdl_alen);

 vendp = ifctx->call.vend;
 *vendp++ = 99;
 *vendp++ = 130;
 *vendp++ = 83;
 *vendp++ = 99;
 *vendp++ = TAG_MAXMSGSIZE;
 *vendp++ = 2;
 *vendp++ = (sizeof(struct bootp_packet) >> 8) & 255;
 *vendp++ = sizeof(struct bootp_packet) & 255;

 snprintf(vendor_client, sizeof(vendor_client), "%s:%s:%s",
  ostype, MACHINE, osrelease);
 vendor_client_len = strlen(vendor_client);
 *vendp++ = TAG_VENDOR_INDENTIFIER;
 *vendp++ = vendor_client_len;
 memcpy(vendp, vendor_client, vendor_client_len);
 vendp += vendor_client_len;
 ifctx->dhcpquerytype = DHCP_NOMSG;
 switch (ifctx->state) {
 case 128:
  *vendp++ = TAG_DHCP_MSGTYPE;
  *vendp++ = 1;
  *vendp++ = DHCP_DISCOVER;
  ifctx->dhcpquerytype = DHCP_DISCOVER;
  ifctx->gotdhcpserver = 0;
  break;
 case 129:
  *vendp++ = TAG_DHCP_MSGTYPE;
  *vendp++ = 1;
  *vendp++ = DHCP_REQUEST;
  ifctx->dhcpquerytype = DHCP_REQUEST;
  *vendp++ = TAG_DHCP_REQ_ADDR;
  *vendp++ = 4;
  memcpy(vendp, &ifctx->reply.yiaddr, 4);
  vendp += 4;
  if (ifctx->gotdhcpserver != 0) {
   *vendp++ = TAG_DHCP_SERVERID;
   *vendp++ = 4;
   memcpy(vendp, &ifctx->dhcpserver, 4);
   vendp += 4;
  }
  *vendp++ = TAG_DHCP_LEASETIME;
  *vendp++ = 4;
  leasetime = htonl(300);
  memcpy(vendp, &leasetime, 4);
  vendp += 4;
  break;
 default:
  break;
 }
 *vendp = TAG_END;

 ifctx->call.secs = 0;
 ifctx->call.flags = htons(0x8000);
}
