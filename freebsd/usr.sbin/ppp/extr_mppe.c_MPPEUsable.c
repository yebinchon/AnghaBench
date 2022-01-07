
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ recvkeylen; scalar_t__ sendkeylen; } ;
struct TYPE_5__ {scalar_t__* file; } ;
struct radius {TYPE_2__ mppe; TYPE_1__ cfg; } ;
struct lcp {scalar_t__ want_auth; int want_authtype; scalar_t__ his_auth; int his_authtype; } ;
struct fsm {TYPE_3__* link; TYPE_4__* bundle; } ;
struct TYPE_8__ {struct radius radius; } ;
struct TYPE_7__ {struct lcp lcp; } ;


 int LogCCP ;
 scalar_t__ PROTO_CHAP ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static int
MPPEUsable(struct fsm *fp)
{
  int ok;

  struct radius *r = &fp->bundle->radius;





  if (*r->cfg.file) {
    ok = r->mppe.sendkeylen && r->mppe.recvkeylen;
    if (!ok)
      log_Printf(LogCCP, "MPPE: Not permitted by RADIUS server\n");
  } else

  {
    struct lcp *lcp = &fp->link->lcp;
    ok = (lcp->want_auth == PROTO_CHAP && lcp->want_authtype == 0x81) ||
         (lcp->his_auth == PROTO_CHAP && lcp->his_authtype == 0x81);
    if (!ok)
      log_Printf(LogCCP, "MPPE: Not usable without CHAP81\n");
  }

  return ok;
}
