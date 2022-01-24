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
struct socket {TYPE_2__* so_proto; } ;
struct TYPE_6__ {int sp_protocol; int /*<<< orphan*/  sp_family; } ;
struct rawcb {TYPE_3__ rcb_proto; struct socket* rcb_socket; } ;
struct TYPE_5__ {TYPE_1__* pr_domain; } ;
struct TYPE_4__ {int /*<<< orphan*/  dom_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rawcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_rawcb_list ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_recvspace ; 
 int /*<<< orphan*/  raw_sendspace ; 
 int /*<<< orphan*/  rawcb_mtx ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rawcb* FUNC5 (struct socket*) ; 

int
FUNC6(struct socket *so, int proto)
{
	struct rawcb *rp = FUNC5(so);
	int error;

	/*
	 * It is assumed that raw_attach is called after space has been
	 * allocated for the rawcb; consumer protocols may simply allocate
	 * type struct rawcb, or a wrapper data structure that begins with a
	 * struct rawcb.
	 */
	FUNC0(rp != NULL, ("raw_attach: rp == NULL"));

	error = FUNC4(so, raw_sendspace, raw_recvspace);
	if (error)
		return (error);
	rp->rcb_socket = so;
	rp->rcb_proto.sp_family = so->so_proto->pr_domain->dom_family;
	rp->rcb_proto.sp_protocol = proto;
	FUNC2(&rawcb_mtx);
	FUNC1(&V_rawcb_list, rp, list);
	FUNC3(&rawcb_mtx);
	return (0);
}