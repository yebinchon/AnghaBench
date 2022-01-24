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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {scalar_t__ pf_ccr_offset; int /*<<< orphan*/  pf_ccrh; int /*<<< orphan*/  pf_ccrt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pccard_ivar* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t brdev, device_t child, uint32_t offset,
    uint8_t val)
{
	struct pccard_ivar *devi = FUNC1(child);
	struct pccard_function *pf = devi->pf;

	/*
	 * Can't use pccard_ccr_write since client drivers may access
	 * registers not contained in the 'mask' if they are non-standard.
	 */
	FUNC0((child, "ccr_write of %#x to %#x (%#x)\n", val, offset,
	  devi->pf->pf_ccr_offset));
	FUNC2(pf->pf_ccrt, pf->pf_ccrh, pf->pf_ccr_offset + offset,
	    val);
	return 0;
}