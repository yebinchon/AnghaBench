
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bootpc_ifcontext {int dhcpquerytype; scalar_t__ state; int gotdhcpserver; int replylen; int reply; int gotnetmask; int gotgw; int gotrootpath; int dhcpserver; } ;
struct TYPE_2__ {scalar_t__ badopt; int taglen; } ;
struct bootpc_globalcontext {TYPE_1__ tmptag; int replylen; int reply; } ;


 unsigned char DHCP_ACK ;


 unsigned char DHCP_OFFER ;

 scalar_t__ IF_BOOTP_RESOLVED ;
 scalar_t__ IF_BOOTP_UNRESOLVED ;
 scalar_t__ IF_DHCP_OFFERED ;
 scalar_t__ IF_DHCP_RESOLVED ;
 scalar_t__ IF_DHCP_UNRESOLVED ;
 int TAG_DHCP_MSGTYPE ;
 int TAG_DHCP_SERVERID ;
 int TAG_END ;
 int TAG_ROOT ;
 int TAG_ROUTERS ;
 int TAG_SUBNETMASK ;
 int bcopy (int *,int *,int ) ;
 char* bootpc_tag (TYPE_1__*,int *,int ,int ) ;
 int memcpy (int *,char*,int) ;

__attribute__((used)) static int
bootpc_received(struct bootpc_globalcontext *gctx,
    struct bootpc_ifcontext *ifctx)
{
 unsigned char dhcpreplytype;
 char *p;







 (void) bootpc_tag(&gctx->tmptag, &gctx->reply,
     gctx->replylen,
     TAG_END);


 if (gctx->tmptag.badopt != 0)
  return 0;

 p = bootpc_tag(&gctx->tmptag, &gctx->reply,
         gctx->replylen, TAG_DHCP_MSGTYPE);
 if (p != ((void*)0))
  dhcpreplytype = *p;
 else
  dhcpreplytype = 129;

 switch (ifctx->dhcpquerytype) {
 case 130:
  if (dhcpreplytype != DHCP_OFFER

      && dhcpreplytype != 129

   )
   return 0;
  break;
 case 128:
  if (dhcpreplytype != DHCP_ACK)
   return 0;
 case 129:
  break;
 }



 if ((ifctx->state == IF_BOOTP_RESOLVED ||
      (ifctx->dhcpquerytype == 130 &&
       (ifctx->state == IF_DHCP_OFFERED ||
        ifctx->state == IF_DHCP_RESOLVED))) &&
     (bootpc_tag(&gctx->tmptag, &ifctx->reply,
   ifctx->replylen,
   TAG_ROOT) != ((void*)0) ||
      bootpc_tag(&gctx->tmptag, &gctx->reply,
   gctx->replylen,
   TAG_ROOT) == ((void*)0)))
  return 0;

 bcopy(&gctx->reply, &ifctx->reply, gctx->replylen);
 ifctx->replylen = gctx->replylen;


 if (ifctx->state == IF_BOOTP_UNRESOLVED)
  ifctx->state = IF_BOOTP_RESOLVED;
 else if (ifctx->state == IF_DHCP_UNRESOLVED &&
   ifctx->dhcpquerytype == 130) {
  if (dhcpreplytype == DHCP_OFFER)
   ifctx->state = IF_DHCP_OFFERED;
  else
   ifctx->state = IF_BOOTP_RESOLVED;
 } else if (ifctx->state == IF_DHCP_OFFERED &&
     ifctx->dhcpquerytype == 128)
  ifctx->state = IF_DHCP_RESOLVED;


 if (ifctx->dhcpquerytype == 130 &&
     ifctx->state != IF_BOOTP_RESOLVED) {
  p = bootpc_tag(&gctx->tmptag, &ifctx->reply,
          ifctx->replylen, TAG_DHCP_SERVERID);
  if (p != ((void*)0) && gctx->tmptag.taglen == 4) {
   memcpy(&ifctx->dhcpserver, p, 4);
   ifctx->gotdhcpserver = 1;
  } else
   ifctx->gotdhcpserver = 0;
  return 1;
 }

 ifctx->gotrootpath = (bootpc_tag(&gctx->tmptag, &ifctx->reply,
      ifctx->replylen,
      TAG_ROOT) != ((void*)0));
 ifctx->gotgw = (bootpc_tag(&gctx->tmptag, &ifctx->reply,
       ifctx->replylen,
       TAG_ROUTERS) != ((void*)0));
 ifctx->gotnetmask = (bootpc_tag(&gctx->tmptag, &ifctx->reply,
     ifctx->replylen,
     TAG_SUBNETMASK) != ((void*)0));
 return 1;
}
