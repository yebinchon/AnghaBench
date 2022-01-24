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
typedef  int u_int32_t ;
struct hptiop_adapter_ops {int dummy; } ;
struct hpt_iop_hba {struct hptiop_adapter_ops* ops; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpt_iop_hba*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct hptiop_adapter_ops hptiop_itl_ops ; 
 struct hptiop_adapter_ops hptiop_mv_ops ; 
 struct hptiop_adapter_ops hptiop_mvfrey_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int,char*) ; 

__attribute__((used)) static int FUNC12(device_t dev)
{
	struct hpt_iop_hba *hba;
	u_int32_t id;
	static char buf[256];
	int sas = 0;
	struct hptiop_adapter_ops *ops;

	if (FUNC10(dev) != 0x1103)
		return (ENXIO);

	id = FUNC6(dev);

	switch (id) {
		case 0x4520:
		case 0x4521:
		case 0x4522:
			sas = 1;
		case 0x3620:
		case 0x3622:
		case 0x3640:
			ops = &hptiop_mvfrey_ops;
			break;
		case 0x4210:
		case 0x4211:
		case 0x4310:
		case 0x4311:
		case 0x4320:
		case 0x4321:
 		case 0x4322:
			sas = 1;
		case 0x3220:
		case 0x3320:
		case 0x3410:
		case 0x3520:
		case 0x3510:
		case 0x3511:
		case 0x3521:
		case 0x3522:
		case 0x3530:
		case 0x3540:
		case 0x3560:
			ops = &hptiop_itl_ops;
			break;
		case 0x3020:
		case 0x3120:
		case 0x3122:
			ops = &hptiop_mv_ops;
			break;
		default:
			return (ENXIO);
	}

	FUNC3(dev, "adapter at PCI %d:%d:%d, IRQ %d\n",
		FUNC5(dev), FUNC9(dev),
		FUNC7(dev), FUNC8(dev));

	FUNC11(buf, "RocketRAID %x %s Controller\n",
				id, sas ? "SAS" : "SATA");
	FUNC4(dev, buf);

	hba = (struct hpt_iop_hba *)FUNC2(dev);
	FUNC1(hba, sizeof(struct hpt_iop_hba));
	hba->ops = ops;

	FUNC0(("hba->ops=%p\n", hba->ops));
	return 0;
}