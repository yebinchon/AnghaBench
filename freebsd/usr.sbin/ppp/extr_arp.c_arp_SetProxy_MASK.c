#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr_dl {int /*<<< orphan*/  sdl_alen; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct bundle {int dummy; } ;
struct TYPE_3__ {int sa_len; int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct arpreq {int arp_flags; int /*<<< orphan*/  arp_pa; TYPE_1__ arp_ha; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int ATF_PERM ; 
 int ATF_PUBL ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  LOG_PHASE_BIT ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIOCSARP ; 
 int /*<<< orphan*/  FUNC3 (struct in_addr,struct sockaddr_dl*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct arpreq*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct bundle *bundle, struct in_addr addr, int s)
{
  struct arpreq arpreq;
  struct {
    struct sockaddr_dl sdl;
    char space[128];
  }      dls;

  FUNC6(&arpreq, '\0', sizeof arpreq);

  /*
   * Get the hardware address of an interface on the same subnet as our local
   * address.
   */
  if (!FUNC3(addr, &dls.sdl, 1)) {
    FUNC4(LOG_PHASE_BIT, "Cannot determine ethernet address for "
               "proxy ARP\n");
    return 0;
  }
  arpreq.arp_ha.sa_len = sizeof(struct sockaddr);
  arpreq.arp_ha.sa_family = AF_UNSPEC;
  FUNC5(arpreq.arp_ha.sa_data, FUNC1(&dls.sdl), dls.sdl.sdl_alen);
  FUNC2(arpreq.arp_pa, AF_INET);
  ((struct sockaddr_in *)&arpreq.arp_pa)->sin_addr.s_addr = addr.s_addr;
  arpreq.arp_flags = ATF_PERM | ATF_PUBL;
  if (FUNC0(s, SIOCSARP, (caddr_t) & arpreq) < 0) {
    FUNC4(LogERROR, "arp_SetProxy: ioctl(SIOCSARP): %s\n",
               FUNC7(errno));
    return 0;
  }
  return 1;
}