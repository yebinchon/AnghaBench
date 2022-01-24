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
typedef  scalar_t__ u_int32_t ;
struct TYPE_2__ {int len; } ;
struct fsm_opt {int /*<<< orphan*/  data; TYPE_1__ hdr; } ;
struct ccp_config {int dummy; } ;
struct bundle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogCCP ; 
 scalar_t__ FUNC0 (struct bundle*,struct ccp_config const*) ; 
 int /*<<< orphan*/  MPPE_MasterKeyValid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bundle *bundle, struct fsm_opt *o,
                   const struct ccp_config *cfg)
{
  u_int32_t mval;

  o->hdr.len = 6;

  if (!MPPE_MasterKeyValid) {
    FUNC1(LogCCP, "MPPE: MasterKey is invalid,"
               " MPPE is available only with CHAP81 authentication\n");
    mval = 0;
    FUNC2(&mval, o->data);
    return;
  }


  mval = FUNC0(bundle, cfg);
  FUNC2(&mval, o->data);
}