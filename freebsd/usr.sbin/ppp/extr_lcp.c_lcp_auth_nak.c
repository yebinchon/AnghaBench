
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chap81; int chap80lm; int chap80nt; int chap05; int pap; } ;
struct lcp {TYPE_2__ cfg; } ;
struct TYPE_3__ {int len; int id; } ;
struct fsm_opt {unsigned char* data; TYPE_1__ hdr; } ;
struct fsm_decode {int dummy; } ;


 scalar_t__ IsAccepted (int ) ;
 int PROTO_CHAP ;
 int PROTO_PAP ;
 int TY_AUTHPROTO ;
 int fsm_nak (struct fsm_decode*,struct fsm_opt*) ;

__attribute__((used)) static int
lcp_auth_nak(struct lcp *lcp, struct fsm_decode *dec)
{
  struct fsm_opt nak;

  nak.hdr.id = TY_AUTHPROTO;

  if (IsAccepted(lcp->cfg.pap)) {
    nak.hdr.len = 4;
    nak.data[0] = (unsigned char)(PROTO_PAP >> 8);
    nak.data[1] = (unsigned char)PROTO_PAP;
    fsm_nak(dec, &nak);
    return 1;
  }

  nak.hdr.len = 5;
  nak.data[0] = (unsigned char)(PROTO_CHAP >> 8);
  nak.data[1] = (unsigned char)PROTO_CHAP;

  if (IsAccepted(lcp->cfg.chap05)) {
    nak.data[2] = 0x05;
    fsm_nak(dec, &nak);

  } else if (IsAccepted(lcp->cfg.chap80nt) ||
             IsAccepted(lcp->cfg.chap80lm)) {
    nak.data[2] = 0x80;
    fsm_nak(dec, &nak);
  } else if (IsAccepted(lcp->cfg.chap81)) {
    nak.data[2] = 0x81;
    fsm_nak(dec, &nak);

  } else {
    return 0;
  }

  return 1;
}
