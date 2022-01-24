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
struct com_s {struct com_s* ibuf; scalar_t__ ioportres; int /*<<< orphan*/  ioportrid; scalar_t__ irqres; int /*<<< orphan*/  cookie; scalar_t__ tp; int /*<<< orphan*/  gone; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct com_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int
FUNC7(device_t dev)
{
	struct com_s	*com;

	com = (struct com_s *) FUNC2(dev);
	if (com == NULL) {
		FUNC3(dev, "NULL com in siounload\n");
		return (0);
	}
	com->gone = TRUE;
	if (com->tp)
		FUNC6(com->tp);
	if (com->irqres) {
		FUNC1(dev, com->irqres, com->cookie);
		FUNC0(dev, SYS_RES_IRQ, 0, com->irqres);
	}
	if (com->ioportres)
		FUNC0(dev, SYS_RES_IOPORT, com->ioportrid,
				     com->ioportres);
	if (com->ibuf != NULL)
		FUNC5(com->ibuf, M_DEVBUF);

	FUNC4(dev, NULL);
	FUNC5(com, M_DEVBUF);
	return (0);
}