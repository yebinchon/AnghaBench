#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct mppe_state {int keylen; int keybits; int stateless; } ;
struct fsm_opt {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
#define  MPPE_OPT_128BIT 130 
#define  MPPE_OPT_40BIT 129 
#define  MPPE_OPT_56BIT 128 
 int MPPE_OPT_BITMASK ; 
 int MPPE_OPT_STATELESS ; 
 struct mppe_state* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mppe_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static struct mppe_state *
FUNC4(struct fsm_opt *o)
{
  struct mppe_state *mp;
  u_int32_t val;

  if ((mp = FUNC0(1, sizeof *mp)) != NULL) {
    FUNC3(o->data, &val);

    switch (val & MPPE_OPT_BITMASK) {
    case MPPE_OPT_128BIT:
      mp->keylen = 16;
      mp->keybits = 128;
      break;
    case MPPE_OPT_56BIT:
      mp->keylen = 8;
      mp->keybits = 56;
      break;
    case MPPE_OPT_40BIT:
      mp->keylen = 8;
      mp->keybits = 40;
      break;
    default:
      FUNC2(LogWARN, "Unexpected MPPE options 0x%08x\n", val);
      FUNC1(mp);
      return NULL;
    }

    mp->stateless = !!(val & MPPE_OPT_STATELESS);
  }

  return mp;
}