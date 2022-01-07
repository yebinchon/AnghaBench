
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {char* file; } ;
struct TYPE_11__ {scalar_t__ sendkeylen; int * sendkey; scalar_t__ recvkeylen; int * recvkey; scalar_t__ types; scalar_t__ policy; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_8__ {int fd; int * auth; int timer; int * rad; } ;
struct TYPE_7__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct radius {TYPE_6__ cfg; TYPE_5__ mppe; int * errstr; int * ipv6routes; int * ipv6prefix; int * repstr; int * msrepstr; int mtu; int * routes; TYPE_4__ mask; TYPE_3__ ip; scalar_t__ vj; scalar_t__ valid; TYPE_2__ cx; TYPE_1__ desc; } ;


 int DEF_MTU ;
 int INADDR_ANY ;
 int INADDR_NONE ;
 int LogDEBUG ;
 int RADIUS_DESCRIPTOR ;
 int log_Printf (int ,char*) ;
 int memset (int *,char,int) ;
 int radius_IsSet ;
 int radius_Read ;
 int radius_UpdateSet ;
 int radius_Write ;

void
radius_Init(struct radius *r)
{
  r->desc.type = RADIUS_DESCRIPTOR;
  r->desc.UpdateSet = radius_UpdateSet;
  r->desc.IsSet = radius_IsSet;
  r->desc.Read = radius_Read;
  r->desc.Write = radius_Write;
  r->cx.fd = -1;
  r->cx.rad = ((void*)0);
  memset(&r->cx.timer, '\0', sizeof r->cx.timer);
  r->cx.auth = ((void*)0);
  r->valid = 0;
  r->vj = 0;
  r->ip.s_addr = INADDR_ANY;
  r->mask.s_addr = INADDR_NONE;
  r->routes = ((void*)0);
  r->mtu = DEF_MTU;
  r->msrepstr = ((void*)0);
  r->repstr = ((void*)0);

  r->ipv6prefix = ((void*)0);
  r->ipv6routes = ((void*)0);

  r->errstr = ((void*)0);
  r->mppe.policy = 0;
  r->mppe.types = 0;
  r->mppe.recvkey = ((void*)0);
  r->mppe.recvkeylen = 0;
  r->mppe.sendkey = ((void*)0);
  r->mppe.sendkeylen = 0;
  *r->cfg.file = '\0';
  log_Printf(LogDEBUG, "Radius: radius_Init\n");
}
