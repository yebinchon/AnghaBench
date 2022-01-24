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
struct sbp_dev {int /*<<< orphan*/  product; int /*<<< orphan*/  revision; int /*<<< orphan*/  vendor; TYPE_1__* target; } ;
struct fw_device {int /*<<< orphan*/  csrrom; } ;
struct csrreg {scalar_t__ val; } ;
struct crom_context {int dummy; } ;
struct TYPE_2__ {struct fw_device* fwdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSRKEY_FIRM_VER ; 
 int /*<<< orphan*/  CSRKEY_MODEL ; 
 int /*<<< orphan*/  CSRKEY_VENDOR ; 
 int /*<<< orphan*/  CSRKEY_VER ; 
 scalar_t__ CSRVAL_T10SBP2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct crom_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crom_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct crom_context*,int /*<<< orphan*/ ,int) ; 
 struct csrreg* FUNC4 (struct crom_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct sbp_dev *sdev)
{
	struct fw_device *fwdev;
	struct crom_context c, *cc = &c;
	struct csrreg *reg;

	FUNC0(sdev->vendor, sizeof(sdev->vendor));
	FUNC0(sdev->product, sizeof(sdev->product));

	fwdev = sdev->target->fwdev;
	FUNC1(cc, fwdev->csrrom);
	/* get vendor string */
	FUNC4(cc, CSRKEY_VENDOR);
	FUNC2(cc);
	FUNC3(cc, sdev->vendor, sizeof(sdev->vendor));
	/* skip to the unit directory for SBP-2 */
	while ((reg = FUNC4(cc, CSRKEY_VER)) != NULL) {
		if (reg->val == CSRVAL_T10SBP2)
			break;
		FUNC2(cc);
	}
	/* get firmware revision */
	reg = FUNC4(cc, CSRKEY_FIRM_VER);
	if (reg != NULL)
		FUNC5(sdev->revision, sizeof(sdev->revision),
						"%06x", reg->val);
	/* get product string */
	FUNC4(cc, CSRKEY_MODEL);
	FUNC2(cc);
	FUNC3(cc, sdev->product, sizeof(sdev->product));
}