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
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct bundle {int dummy; } ;
struct arpreq {int /*<<< orphan*/  arp_pa; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIOCDARP ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct arpreq*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct bundle *bundle, struct in_addr addr, int s)
{
  struct arpreq arpreq;

  FUNC3(&arpreq, '\0', sizeof arpreq);
  FUNC1(arpreq.arp_pa, AF_INET);
  ((struct sockaddr_in *)&arpreq.arp_pa)->sin_addr.s_addr = addr.s_addr;
  if (FUNC0(s, SIOCDARP, (caddr_t) & arpreq) < 0) {
    FUNC2(LogERROR, "arp_ClearProxy: ioctl(SIOCDARP): %s\n",
               FUNC4(errno));
    return 0;
  }
  return 1;
}