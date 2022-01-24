#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct fsm_opt {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  keybits; } ;
struct ccp_config {TYPE_1__ mppe; } ;
struct bundle {int dummy; } ;

/* Variables and functions */
 int MODE_ACK ; 
 int MODE_NAK ; 
 scalar_t__ MPPE_ANYSTATE ; 
 int FUNC0 (struct bundle*,struct ccp_config const*) ; 
 int /*<<< orphan*/  MPPE_MasterKeyValid ; 
 int MPPE_OPT_128BIT ; 
 int MPPE_OPT_BITMASK ; 
 int MPPE_OPT_STATELESS ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC3(struct bundle *bundle, struct fsm_opt *o,
                  const struct ccp_config *cfg)
{
  u_int32_t mval, peer;

  FUNC2(o->data, &peer);

  if (!MPPE_MasterKeyValid)
    /* Treat their NAK as a REJ */
    return MODE_NAK;

  mval = FUNC0(bundle, cfg);

  /*
   * If we haven't been configured with a specific number of keybits, allow
   * whatever the peer asks for.
   */
  if (!cfg->mppe.keybits) {
    mval &= ~MPPE_OPT_BITMASK;
    mval |= (peer & MPPE_OPT_BITMASK);
    if (!(mval & MPPE_OPT_BITMASK))
      mval |= MPPE_OPT_128BIT;
  }

  /* Adjust our statelessness */
  if (cfg->mppe.state == MPPE_ANYSTATE) {
    mval &= ~MPPE_OPT_STATELESS;
    mval |= (peer & MPPE_OPT_STATELESS);
  }

  FUNC1(&mval, o->data);

  return MODE_ACK;
}