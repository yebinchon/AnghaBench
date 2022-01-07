
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bootpc_ifcontext {int xid; int state; } ;
struct bootpc_globalcontext {int xid; int interfaces; } ;


 int IF_BOOTP_UNRESOLVED ;
 int IF_DHCP_UNRESOLVED ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INSERT_TAIL (int *,struct bootpc_ifcontext*,int ) ;
 struct bootpc_ifcontext* malloc (int,int ,int) ;
 int next ;

__attribute__((used)) static void
allocifctx(struct bootpc_globalcontext *gctx)
{
 struct bootpc_ifcontext *ifctx;

 ifctx = malloc(sizeof(*ifctx), M_TEMP, M_WAITOK | M_ZERO);
 ifctx->xid = gctx->xid;



 ifctx->state = IF_DHCP_UNRESOLVED;

 gctx->xid += 0x100;
 STAILQ_INSERT_TAIL(&gctx->interfaces, ifctx, next);
}
