#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xenbus_transaction {int dummy; } ;
struct pcifront_device {int gnt_ref; TYPE_1__* xdev; int /*<<< orphan*/  evtchn; int /*<<< orphan*/  sh_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct xenbus_transaction*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XEN_PCI_MAGIC ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xenbus_transaction*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC7 (TYPE_1__*,struct xenbus_transaction*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xenbus_transaction*,int) ; 
 struct xenbus_transaction* FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct pcifront_device *pdev)
{
	int err = 0;
	struct xenbus_transaction *trans;

	err = FUNC5(pdev->xdev, FUNC2(pdev->sh_info));
	if (err < 0) {
		FUNC1("error granting access to ring page\n");
		goto out;
	}

	pdev->gnt_ref = err;

	err = FUNC3(pdev->xdev, &pdev->evtchn);
	if (err)
		goto out;

 do_publish:
	trans = FUNC9();
	if (FUNC0(trans)) {
		FUNC4(pdev->xdev, err,
						 "Error writing configuration for backend "
						 "(start transaction)");
		goto out;
	}

	err = FUNC6(trans, pdev->xdev->nodename,
						"pci-op-ref", "%u", pdev->gnt_ref);
	if (!err)
		err = FUNC6(trans, pdev->xdev->nodename,
							"event-channel", "%u", pdev->evtchn);
	if (!err)
		err = FUNC6(trans, pdev->xdev->nodename,
							"magic", XEN_PCI_MAGIC);
	if (!err)
		err = FUNC7(pdev->xdev, trans,
								  XenbusStateInitialised);

	if (err) {
		FUNC8(trans, 1);
		FUNC4(pdev->xdev, err,
						 "Error writing configuration for backend");
		goto out;
	} else {
		err = FUNC8(trans, 0);
		if (err == -EAGAIN)
			goto do_publish;
		else if (err) {
			FUNC4(pdev->xdev, err,
							 "Error completing transaction for backend");
			goto out;
		}
	}

 out:
	return err;
}