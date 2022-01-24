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
struct octeon_device {int num_oqs; struct lio_droq** droq; } ;
struct lro_ctrl {struct ifnet* ifp; } ;
struct lio_droq {struct lro_ctrl lro; } ;
struct TYPE_6__ {TYPE_2__* rxpciq; } ;
struct lio {TYPE_3__ linfo; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,struct ifnet*) ; 
 int FUNC3 (struct lro_ctrl*) ; 

__attribute__((used)) static int
FUNC4(struct octeon_device *octeon_dev, struct ifnet *ifp)
{
	struct lio	*lio = FUNC0(ifp);
	struct lio_droq	*droq;
	struct lro_ctrl	*lro;
	int		i, q_no, ret = 0;

	for (i = 0; i < octeon_dev->num_oqs; i++) {
		q_no = lio->linfo.rxpciq[i].s.q_no;
		droq = octeon_dev->droq[q_no];
		lro = &droq->lro;
		ret = FUNC3(lro);
		if (ret) {
			FUNC1(octeon_dev, "LRO Initialization failed ret %d\n",
				    ret);
			goto lro_init_failed;
		}

		lro->ifp = ifp;
	}

	return (ret);

lro_init_failed:
	FUNC2(octeon_dev, ifp);

	return (ret);
}