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
struct wtap_medium {scalar_t__ open; int /*<<< orphan*/  md_mtx; TYPE_1__* tx_handler; int /*<<< orphan*/  md_pktbuf; } ;
struct packet {int id; struct mbuf* m; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  proc; int /*<<< orphan*/  tq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct mbuf*) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_WTAP_PACKET ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pf_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(struct wtap_medium *md, int id, struct mbuf*m)
{

	FUNC4(&md->md_mtx);
	if (md->open == 0){
		FUNC0("[%d] dropping m=%p\n", id, m);
		FUNC2(m);
		FUNC5(&md->md_mtx);
		return 0;
	}

	FUNC0("[%d] transmiting m=%p\n", id, m);
	struct packet *p = (struct packet *)FUNC3(sizeof(struct packet),
	    M_WTAP_PACKET, M_ZERO | M_NOWAIT);
	p->id = id;
	p->m = m;

	FUNC1(&md->md_pktbuf, p, pf_list);
	FUNC6(md->tx_handler->tq, &md->tx_handler->proc);
	FUNC5(&md->md_mtx);

      return 0;
}