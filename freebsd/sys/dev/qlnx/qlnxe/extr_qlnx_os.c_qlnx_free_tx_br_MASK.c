#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlnx_fastpath {int /*<<< orphan*/  tx_mtx; int /*<<< orphan*/ * tx_br; int /*<<< orphan*/  tx_pkts_freed; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {struct ifnet* ifp; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC1 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(qlnx_host_t *ha, struct qlnx_fastpath *fp)
{
	struct mbuf	*mp;
	struct ifnet	*ifp = ha->ifp;

	if (FUNC4(&fp->tx_mtx)) {

		if (fp->tx_br != NULL) {

			FUNC5(&fp->tx_mtx);

			while ((mp = FUNC1(ifp, fp->tx_br)) != NULL) {
				fp->tx_pkts_freed++;
				FUNC2(mp);
			}

			FUNC6(&fp->tx_mtx);

			FUNC0(fp->tx_br, M_DEVBUF);
			fp->tx_br = NULL;
		}
		FUNC3(&fp->tx_mtx);
	}
	return;
}