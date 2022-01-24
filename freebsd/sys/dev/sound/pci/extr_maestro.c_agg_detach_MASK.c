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
typedef  int /*<<< orphan*/  u_int16_t ;
struct agg_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  buf_dmat; int /*<<< orphan*/  stat_dmat; int /*<<< orphan*/  stat_map; int /*<<< orphan*/  stat; int /*<<< orphan*/  reg; int /*<<< orphan*/  regid; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; scalar_t__ active; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  PCI_POWERSTATE_D3 ; 
 int /*<<< orphan*/  PORT_HOSTINT_CTRL ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct agg_info* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct agg_info	*ess = FUNC11(dev);
	int r;
	u_int16_t icr;

	icr = FUNC0(ess, PORT_HOSTINT_CTRL, 2);
	FUNC1(ess, PORT_HOSTINT_CTRL, 0, 2);

	FUNC2(ess);
	if (ess->active) {
		FUNC1(ess, PORT_HOSTINT_CTRL, icr, 2);
		FUNC4(ess);
		return EBUSY;
	}
	FUNC4(ess);

	r = FUNC12(dev);
	if (r) {
		FUNC1(ess, PORT_HOSTINT_CTRL, icr, 2);
		return r;
	}

	FUNC2(ess);
	FUNC3(ess, PCI_POWERSTATE_D3);
	FUNC4(ess);

	FUNC7(dev, ess->irq, ess->ih);
	FUNC6(dev, SYS_RES_IRQ, ess->irqid, ess->irq);
	FUNC6(dev, SYS_RES_IOPORT, ess->regid, ess->reg);
	FUNC8(ess->stat_dmat, ess->stat, ess->stat_map);
	FUNC5(ess->stat_dmat);
	FUNC5(ess->buf_dmat);
	FUNC10(&ess->lock);
	FUNC9(ess, M_DEVBUF);
	return 0;
}