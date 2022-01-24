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
struct ib_mr {int dummy; } ;
struct qlnxr_mr {struct ib_mr ibmr; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ib_mr* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qlnxr_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct qlnxr_mr* FUNC3 (struct ib_pd*,int) ; 
 struct qlnxr_dev* FUNC4 (int /*<<< orphan*/ ) ; 

struct ib_mr *
FUNC5(struct ib_pd *ibpd, int max_page_list_len)
{
	struct qlnxr_dev *dev;
	struct qlnxr_mr *mr;
	qlnx_host_t	*ha;
	struct ib_mr *ibmr = NULL;

	dev = FUNC4((ibpd->device));
	ha = dev->ha;

	FUNC2(ha, "enter\n");

	mr = FUNC3(ibpd, max_page_list_len);

	if (FUNC1(mr)) {
		ibmr = FUNC0(-EINVAL);
	} else {
		ibmr = &mr->ibmr;
	}

	FUNC2(ha, "exit %p\n", ibmr);
	return (ibmr);
}