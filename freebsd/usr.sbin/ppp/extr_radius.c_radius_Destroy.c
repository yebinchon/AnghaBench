
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fd; int rad; int timer; } ;
struct TYPE_3__ {scalar_t__ sendkeylen; int * sendkey; scalar_t__ recvkeylen; int * recvkey; } ;
struct radius {TYPE_2__ cx; TYPE_1__ mppe; int * errstr; int * ipv6prefix; int * repstr; int * msrepstr; int * filterid; int ipv6routes; int routes; scalar_t__ valid; } ;


 int LogDEBUG ;
 int free (int *) ;
 int log_Printf (int ,char*) ;
 int rad_close (int ) ;
 int route_DeleteAll (int *) ;
 int timer_Stop (int *) ;

void
radius_Destroy(struct radius *r)
{
  r->valid = 0;
  log_Printf(LogDEBUG, "Radius: radius_Destroy\n");
  timer_Stop(&r->cx.timer);
  route_DeleteAll(&r->routes);

  route_DeleteAll(&r->ipv6routes);

  free(r->filterid);
  r->filterid = ((void*)0);
  free(r->msrepstr);
  r->msrepstr = ((void*)0);
  free(r->repstr);
  r->repstr = ((void*)0);

  free(r->ipv6prefix);
  r->ipv6prefix = ((void*)0);

  free(r->errstr);
  r->errstr = ((void*)0);
  free(r->mppe.recvkey);
  r->mppe.recvkey = ((void*)0);
  r->mppe.recvkeylen = 0;
  free(r->mppe.sendkey);
  r->mppe.sendkey = ((void*)0);
  r->mppe.sendkeylen = 0;
  if (r->cx.fd != -1) {
    r->cx.fd = -1;
    rad_close(r->cx.rad);
  }
}
