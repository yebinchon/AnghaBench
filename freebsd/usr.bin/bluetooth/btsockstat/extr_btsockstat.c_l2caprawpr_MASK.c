#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  this ;
struct TYPE_6__ {int /*<<< orphan*/  sb_ccc; } ;
struct TYPE_5__ {int /*<<< orphan*/  sb_ccc; } ;
struct socket {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
typedef  int /*<<< orphan*/  so ;
typedef  int /*<<< orphan*/  pcb ;
struct TYPE_7__ {int /*<<< orphan*/  src; scalar_t__ so; } ;
typedef  TYPE_3__ ng_btsocket_l2cap_raw_pcb_t ;
typedef  int /*<<< orphan*/ * ng_btsocket_l2cap_raw_pcb_p ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(kvm_t *kvmd, u_long addr)
{
	ng_btsocket_l2cap_raw_pcb_p	this = NULL, next = NULL;
	ng_btsocket_l2cap_raw_pcb_t	pcb;
	struct socket			so;
	int				first = 1;

	if (addr == 0)
		return;

        if (FUNC3(kvmd, addr, (char *) &this, sizeof(this)) < 0)
		return;

	for ( ; this != NULL; this = next) {
		if (FUNC3(kvmd, (u_long) this, (char *) &pcb, sizeof(pcb)) < 0)
			return;
		if (FUNC3(kvmd, (u_long) pcb.so, (char *) &so, sizeof(so)) < 0)
			return;

		next = FUNC0(&pcb, next);

		if (first) {
			first = 0;
			FUNC2(stdout, 
"Active raw L2CAP sockets\n" \
"%-8.8s %-8.8s %-6.6s %-6.6s %-17.17s\n",
				"Socket",
				"PCB",
				"Recv-Q",
				"Send-Q",
				"Local address");
		}

		FUNC2(stdout,
"%-8lx %-8lx %6d %6d %-17.17d\n",
			(unsigned long) pcb.so,
			(unsigned long) this,
			so.so_rcv.sb_ccc,
			so.so_snd.sb_ccc,
			FUNC1(&pcb.src, NULL, 0));
	}
}