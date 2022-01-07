
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct fsm_opt {int data; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ keybits; } ;
struct ccp_config {TYPE_1__ mppe; } ;
struct bundle {int dummy; } ;


 int MODE_ACK ;
 int MODE_NAK ;
 int MPPE_ConfigVal (struct bundle*,struct ccp_config const*) ;
 int MPPE_MasterKeyValid ;



 int MPPE_OPT_BITMASK ;
 int MPPE_OPT_MASK ;
 int MPPE_OPT_STATELESS ;
 scalar_t__ MPPE_STATEFUL ;
 scalar_t__ MPPE_STATELESS ;
 int ua_htonl (int*,int ) ;
 int ua_ntohl (int ,int*) ;

__attribute__((used)) static int
MPPESetOptsInput(struct bundle *bundle, struct fsm_opt *o,
                 const struct ccp_config *cfg)
{
  u_int32_t mval, peer;
  int res = MODE_ACK;

  ua_ntohl(o->data, &peer);
  if (!MPPE_MasterKeyValid) {
    if (peer != 0) {
      peer = 0;
      ua_htonl(&peer, o->data);
      return MODE_NAK;
    } else
      return MODE_ACK;
  }

  mval = MPPE_ConfigVal(bundle, cfg);

  if (peer & ~MPPE_OPT_MASK)

    res = MODE_NAK;

  if (peer & MPPE_OPT_STATELESS) {
    if (cfg->mppe.state == MPPE_STATEFUL)

      res = MODE_NAK;
    else

      mval |= MPPE_OPT_STATELESS;
  } else {
    if (cfg->mppe.state == MPPE_STATELESS)

      res = MODE_NAK;
    else

      mval &= ~MPPE_OPT_STATELESS;
  }


  if (cfg->mppe.keybits) {
    ua_htonl(&mval, o->data);
    return peer == mval ? res : MODE_NAK;
  }


  switch (peer & MPPE_OPT_BITMASK) {
  case 130:
  case 128:
  case 129:
    break;
  default:
    res = MODE_NAK;
  }


  mval &= ~MPPE_OPT_BITMASK;
  if (peer & 130)
    mval |= 130;
  else if (peer & 128)
    mval |= 128;
  else if (peer & 129)
    mval |= 129;
  else
    mval |= 130;
  ua_htonl(&mval, o->data);

  return res;
}
