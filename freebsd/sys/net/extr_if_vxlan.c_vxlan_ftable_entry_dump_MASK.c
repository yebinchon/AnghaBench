#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_4__ {int sa_family; } ;
union vxlan_sockaddr {TYPE_3__ in6; TYPE_2__ in4; TYPE_1__ sa; } ;
struct vxlan_ftable_entry {scalar_t__ vxlfe_expire; int /*<<< orphan*/ * vxlfe_mac; int /*<<< orphan*/  vxlfe_flags; union vxlan_sockaddr vxlfe_raddr; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int AF_INET ; 
 int ETHER_ADDR_LEN ; 
 int INET6_ADDRSTRLEN ; 
 int INET_ADDRSTRLEN ; 
 scalar_t__ FUNC0 (struct vxlan_ftable_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int,void const*,char*,int) ; 
 scalar_t__ FUNC2 (struct sbuf*) ; 
 int FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,char,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,int) ; 

__attribute__((used)) static void
FUNC7(struct vxlan_ftable_entry *fe, struct sbuf *sb)
{
	char buf[64];
	const union vxlan_sockaddr *sa;
	const void *addr;
	int i, len, af, width;

	sa = &fe->vxlfe_raddr;
	af = sa->sa.sa_family;
	len = FUNC3(sb);

	FUNC4(sb, "%c 0x%02X ", FUNC0(fe) ? 'D' : 'S',
	    fe->vxlfe_flags);

	for (i = 0; i < ETHER_ADDR_LEN - 1; i++)
		FUNC4(sb, "%02X:", fe->vxlfe_mac[i]);
	FUNC4(sb, "%02X ", fe->vxlfe_mac[i]);

	if (af == AF_INET) {
		addr = &sa->in4.sin_addr;
		width = INET_ADDRSTRLEN - 1;
	} else {
		addr = &sa->in6.sin6_addr;
		width = INET6_ADDRSTRLEN - 1;
	}
	FUNC1(af, addr, buf, sizeof(buf));
	FUNC4(sb, "%*s ", width, buf);

	FUNC4(sb, "%08jd", (intmax_t)fe->vxlfe_expire);

	FUNC5(sb, '\n');

	/* Truncate a partial line. */
	if (FUNC2(sb) != 0)
		FUNC6(sb, len);
}