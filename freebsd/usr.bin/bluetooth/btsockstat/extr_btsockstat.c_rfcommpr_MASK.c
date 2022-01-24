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
struct socket {int so_options; TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
typedef  int /*<<< orphan*/  so ;
typedef  int /*<<< orphan*/  remote ;
typedef  int /*<<< orphan*/  pcb ;
struct TYPE_7__ {int /*<<< orphan*/  state; int /*<<< orphan*/  dlci; int /*<<< orphan*/  channel; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ so; } ;
typedef  TYPE_3__ ng_btsocket_rfcomm_pcb_t ;
typedef  int /*<<< orphan*/ * ng_btsocket_rfcomm_pcb_p ;
typedef  int /*<<< orphan*/  local ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int SO_ACCEPTCONN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC5(kvm_t *kvmd, u_long addr)
{
	static char const * const	states[] = {
	/* NG_BTSOCKET_RFCOMM_DLC_CLOSED */	   "CLOSED",
	/* NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT */	   "W4CON",
	/* NG_BTSOCKET_RFCOMM_DLC_CONFIGURING */   "CONFIG",
	/* NG_BTSOCKET_RFCOMM_DLC_CONNECTING */    "CONN",
	/* NG_BTSOCKET_RFCOMM_DLC_CONNECTED */     "OPEN",
	/* NG_BTSOCKET_RFCOMM_DLC_DISCONNECTING */ "DISCON"
	};

	ng_btsocket_rfcomm_pcb_p	this = NULL, next = NULL;
	ng_btsocket_rfcomm_pcb_t	pcb;
	struct socket			so;
	int				first = 1;
	char				local[24], remote[24];

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
"Active RFCOMM sockets\n" \
"%-8.8s %-6.6s %-6.6s %-17.17s %-17.17s %-4.4s %-4.4s %s\n",
				"PCB",
				"Recv-Q",
				"Send-Q",
				"Local address",
				"Foreign address",
				"Chan",
				"DLCI",
				"State");
		}

		FUNC2(stdout,
"%-8lx %6d %6d %-17.17d %-17.17d %-4d %-4d %s\n",
			(unsigned long) this,
			so.so_rcv.sb_ccc,
			so.so_snd.sb_ccc,
			FUNC1(&pcb.src, local, sizeof(local)),
			FUNC1(&pcb.dst, remote, sizeof(remote)),
			pcb.channel,
			pcb.dlci,
			(so.so_options & SO_ACCEPTCONN)?
				"LISTEN" : FUNC4(pcb.state));
	}
}