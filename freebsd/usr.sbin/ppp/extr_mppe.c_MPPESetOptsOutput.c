
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct fsm_opt {int data; } ;
struct TYPE_2__ {scalar_t__ state; int keybits; } ;
struct ccp_config {TYPE_1__ mppe; } ;
struct bundle {int dummy; } ;


 int MODE_ACK ;
 int MODE_NAK ;
 scalar_t__ MPPE_ANYSTATE ;
 int MPPE_ConfigVal (struct bundle*,struct ccp_config const*) ;
 int MPPE_MasterKeyValid ;
 int MPPE_OPT_128BIT ;
 int MPPE_OPT_BITMASK ;
 int MPPE_OPT_STATELESS ;
 int ua_htonl (int*,int ) ;
 int ua_ntohl (int ,int*) ;

__attribute__((used)) static int
MPPESetOptsOutput(struct bundle *bundle, struct fsm_opt *o,
                  const struct ccp_config *cfg)
{
  u_int32_t mval, peer;

  ua_ntohl(o->data, &peer);

  if (!MPPE_MasterKeyValid)

    return MODE_NAK;

  mval = MPPE_ConfigVal(bundle, cfg);





  if (!cfg->mppe.keybits) {
    mval &= ~MPPE_OPT_BITMASK;
    mval |= (peer & MPPE_OPT_BITMASK);
    if (!(mval & MPPE_OPT_BITMASK))
      mval |= MPPE_OPT_128BIT;
  }


  if (cfg->mppe.state == MPPE_ANYSTATE) {
    mval &= ~MPPE_OPT_STATELESS;
    mval |= (peer & MPPE_OPT_STATELESS);
  }

  ua_htonl(&mval, o->data);

  return MODE_ACK;
}
