#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* s_addr; } ;
struct TYPE_14__ {scalar_t__ s_addr; } ;
struct ncprange {int ncprange_ip4width; int ncprange_ip6width; int /*<<< orphan*/  ncprange_ip6addr; void* ncprange_family; TYPE_6__ ncprange_ip4mask; TYPE_7__ ncprange_ip4addr; } ;
struct TYPE_11__ {TYPE_7__* dns; } ;
struct TYPE_12__ {TYPE_4__ ns; TYPE_7__ my_ip; TYPE_7__ peer_ip; } ;
struct TYPE_9__ {int /*<<< orphan*/  ncpaddr_ip6addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  ncpaddr_ip6addr; } ;
struct TYPE_10__ {TYPE_2__ myaddr; TYPE_1__ hisaddr; } ;
struct ncp {TYPE_5__ ipcp; TYPE_3__ ipv6cp; } ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 TYPE_7__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ INADDR_ANY ; 
 void* INADDR_BROADCAST ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_6__ FUNC3 (int) ; 
 int FUNC4 (void*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int FUNC10 (char const*,char**,int /*<<< orphan*/ ) ; 

int
FUNC11(struct ncprange *range, struct ncp *ncp, const char *data)
{
  int bits, len;
  char *wp;
  const char *cp;
  char *s;

  len = FUNC7(data, "/");

  if (ncp && FUNC8(data, "HISADDR", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.peer_ip;
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;
#ifndef NOINET6
  } else if (ncp && FUNC8(data, "HISADDR6", len) == 0) {
    range->ncprange_family = AF_INET6;
    range->ncprange_ip6addr = ncp->ipv6cp.hisaddr.ncpaddr_ip6addr;
    range->ncprange_ip6width = 128;
    return 1;
#endif
  } else if (ncp && FUNC8(data, "MYADDR", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.my_ip;
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;
#ifndef NOINET6
  } else if (ncp && FUNC8(data, "MYADDR6", len) == 0) {
    range->ncprange_family = AF_INET6;
    range->ncprange_ip6addr = ncp->ipv6cp.myaddr.ncpaddr_ip6addr;
    range->ncprange_ip6width = 128;
    return 1;
#endif
  } else if (ncp && FUNC8(data, "DNS0", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.ns.dns[0];
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;
  } else if (ncp && FUNC8(data, "DNS1", len) == 0) {
    range->ncprange_family = AF_INET;
    range->ncprange_ip4addr = ncp->ipcp.ns.dns[1];
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
    return 1;
  }

  s = (char *)FUNC2(len + 1);
  FUNC9(s, data, len);
  s[len] = '\0';
  bits = -1;

  if (data[len] != '\0') {
    bits = FUNC10(data + len + 1, &wp, 0);
    if (*wp || wp == data + len + 1 || bits < 0 || bits > 128) {
      FUNC5(LogWARN, "ncprange_aton: bad mask width.\n");
      return 0;
    }
  }

  if ((cp = FUNC6(data, ':')) == NULL) {
    range->ncprange_family = AF_INET;

    range->ncprange_ip4addr = FUNC0(s);

    if (range->ncprange_ip4addr.s_addr == INADDR_NONE) {
      FUNC5(LogWARN, "ncprange_aton: %s: Bad address\n", s);
      return 0;
    }

    if (range->ncprange_ip4addr.s_addr == INADDR_ANY) {
      range->ncprange_ip4mask.s_addr = INADDR_ANY;
      range->ncprange_ip4width = 0;
    } else if (bits == -1) {
      range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
      range->ncprange_ip4width = 32;
    } else if (bits > 32) {
      FUNC5(LogWARN, "ncprange_aton: bad mask width.\n");
      return 0;
    } else {
      range->ncprange_ip4mask = FUNC3(bits);
      range->ncprange_ip4width = bits;
    }

    return 1;
#ifndef NOINET6
  } else if (FUNC6(cp + 1, ':') != NULL) {
    range->ncprange_family = AF_INET6;

    if (FUNC4(AF_INET6, s, &range->ncprange_ip6addr) != 1) {
      FUNC5(LogWARN, "ncprange_aton: %s: Bad address\n", s);
      return 0;
    }

    if (FUNC1(&range->ncprange_ip6addr))
      range->ncprange_ip6width = 0;
    else
      range->ncprange_ip6width = (bits == -1) ? 128 : bits;
    return 1;
#endif
  }

  return 0;
}