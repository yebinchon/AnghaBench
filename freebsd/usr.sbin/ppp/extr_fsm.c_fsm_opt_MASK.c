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
typedef  unsigned int u_char ;
struct fsm_opt_hdr {int dummy; } ;
struct TYPE_2__ {unsigned int len; } ;
struct fsm_opt {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,struct fsm_opt const*,unsigned int) ; 

__attribute__((used)) static int
FUNC2(u_char *opt, int optlen, const struct fsm_opt *o)
{
  unsigned cplen = o->hdr.len;

  if (optlen < (int)sizeof(struct fsm_opt_hdr))
    optlen = 0;

  if ((int)cplen > optlen) {
    FUNC0(LogERROR, "Can't REJ length %d - trunating to %d\n",
      cplen, optlen);
    cplen = optlen;
  }
  FUNC1(opt, o, cplen);
  if (cplen)
    opt[1] = cplen;

  return cplen;
}