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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; TYPE_1__ ncprange_ip4mask; } ;
struct ncpaddr {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int NCP_ASCIIBUFFERSIZE ; 
 char* FUNC0 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ncprange const*,struct ncpaddr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

const char *
FUNC6(const struct ncprange *range)
{
  char *res;
  struct ncpaddr addr;
  int len;

  if (!FUNC1(range, &addr))
    return "<AF_UNSPEC>";

  res = FUNC0(&addr);
  len = FUNC5(res);
  if (len >= NCP_ASCIIBUFFERSIZE - 1)
    return res;

  switch (range->ncprange_family) {
  case AF_INET:
    if (range->ncprange_ip4width == -1) {
      /* A non-contiguous mask */
      for (; len >= 3; res[len -= 2] = '\0')
        if (FUNC4(res + len - 2, ".0"))
          break;
      FUNC3(res + len, sizeof res - len, "&0x%08lx",
               (unsigned long)FUNC2(range->ncprange_ip4mask.s_addr));
    } else if (range->ncprange_ip4width < 32)
      FUNC3(res + len, sizeof res - len, "/%d", range->ncprange_ip4width);

    return res;

#ifndef NOINET6
  case AF_INET6:
    if (range->ncprange_ip6width != 128)
      FUNC3(res + len, sizeof res - len, "/%d", range->ncprange_ip6width);

    return res;
#endif
  }

  return "<AF_UNSPEC>";
}