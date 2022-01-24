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
struct socket {scalar_t__ so_pcb; } ;
struct ngpcb {int type; struct socket* ng_socket; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ngpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PCB ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct ngpcb* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngpdg_recvspace ; 
 int /*<<< orphan*/  ngpdg_sendspace ; 
 int /*<<< orphan*/  ngsocketlist_mtx ; 
 int /*<<< orphan*/  ngsocklist ; 
 int /*<<< orphan*/  socks ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct socket *so, int type)
{
	struct ngpcb *pcbp;
	int error;

	/* Standard socket setup stuff. */
	error = FUNC4(so, ngpdg_sendspace, ngpdg_recvspace);
	if (error)
		return (error);

	/* Allocate the pcb. */
	pcbp = FUNC1(sizeof(struct ngpcb), M_PCB, M_WAITOK | M_ZERO);
	pcbp->type = type;

	/* Link the pcb and the socket. */
	so->so_pcb = (caddr_t)pcbp;
	pcbp->ng_socket = so;

	/* Add the socket to linked list */
	FUNC2(&ngsocketlist_mtx);
	FUNC0(&ngsocklist, pcbp, socks);
	FUNC3(&ngsocketlist_mtx);
	return (0);
}