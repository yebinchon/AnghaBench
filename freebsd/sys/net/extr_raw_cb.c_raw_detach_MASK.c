#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket {struct rawcb* so_pcb; } ;
struct rawcb {struct socket* rcb_socket; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rawcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PCB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rawcb_mtx ; 

void
FUNC5(struct rawcb *rp)
{
	struct socket *so = rp->rcb_socket;

	FUNC0(so->so_pcb == rp, ("raw_detach: so_pcb != rp"));

	so->so_pcb = NULL;
	FUNC3(&rawcb_mtx);
	FUNC1(rp, list);
	FUNC4(&rawcb_mtx);
	FUNC2((caddr_t)(rp), M_PCB);
}