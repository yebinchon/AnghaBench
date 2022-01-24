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
struct socket {int dummy; } ;
struct sockaddr_ng {int sg_len; int /*<<< orphan*/  sg_family; int /*<<< orphan*/  sg_data; } ;
struct sockaddr {int dummy; } ;
struct ngpcb {TYPE_1__* sockdata; } ;
typedef  int /*<<< orphan*/ * node_p ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETGRAPH ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_SONAME ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NG_NODESIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_ng*,int /*<<< orphan*/ ) ; 
 struct sockaddr_ng* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ngpcb* FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct socket *so, struct sockaddr **addr)
{
	struct ngpcb *pcbp;
	struct sockaddr_ng *sg;
	int sg_len;
	int error = 0;

	pcbp = FUNC7(so);
	if ((pcbp == NULL) || (pcbp->sockdata == NULL))
		/* XXXGL: can this still happen? */
		return (EINVAL);

	sg_len = sizeof(struct sockaddr_ng) + NG_NODESIZ -
	    sizeof(sg->sg_data);
	sg = FUNC4(sg_len, M_SONAME, M_WAITOK | M_ZERO);

	FUNC5(&pcbp->sockdata->mtx);
	if (pcbp->sockdata->node != NULL) {
		node_p node = pcbp->sockdata->node;

		if (FUNC0(node))
			FUNC2(FUNC1(node), sg->sg_data,
			    FUNC8(FUNC1(node)));
		FUNC6(&pcbp->sockdata->mtx);

		sg->sg_len = sg_len;
		sg->sg_family = AF_NETGRAPH;
		*addr = (struct sockaddr *)sg;
	} else {
		FUNC6(&pcbp->sockdata->mtx);
		FUNC3(sg, M_SONAME);
		error = EINVAL;
	}

	return (error);
}