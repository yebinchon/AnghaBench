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
struct csa_info {int /*<<< orphan*/  rch; int /*<<< orphan*/  pch; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  csa_res ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_HICR ; 
 int /*<<< orphan*/  BA0_HISR ; 
 int /*<<< orphan*/  BA1_CIE ; 
 int /*<<< orphan*/  BA1_PFIE ; 
 int ENXIO ; 
 int HICR_CHGM ; 
 int HICR_IEV ; 
 int HISR_INTENA ; 
 int /*<<< orphan*/  FUNC0 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct csa_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct csa_info*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct csa_info* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct csa_info *csa;
	csa_res *resp;

	csa = FUNC12(dev);
	resp = &csa->res;

	FUNC1(csa, 1);

	/* cs_hardware_init */
	FUNC9(csa);
	FUNC8(csa);
	FUNC0(csa);
	if (FUNC6(resp))
		return (ENXIO);
	/* Enable interrupts on the part. */
	if ((FUNC2(resp, BA0_HISR) & HISR_INTENA) == 0)
		FUNC10(resp, BA0_HICR, HICR_IEV | HICR_CHGM);
	/* playback interrupt enable */
	FUNC11(resp, BA1_PFIE, FUNC3(resp, BA1_PFIE) & ~0x0000f03f);
	/* capture interrupt enable */
	FUNC11(resp, BA1_CIE,
	    (FUNC3(resp, BA1_CIE) & ~0x0000003f) | 0x00000001);
	/* cs_restart_part */
	FUNC4(&csa->pch);
	FUNC7(csa);
	FUNC4(&csa->rch);
	FUNC5(csa);

	FUNC1(csa, -1);

	return 0;
}