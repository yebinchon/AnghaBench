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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 int PCIM_VC_CAP1_EXT_COUNT ; 
 int PCIM_VC_CAP1_LOWPRI_EXT_COUNT ; 
 scalar_t__ PCIR_VC_CAP1 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(int fd, struct pci_conf *p, uint16_t ptr, uint8_t ver)
{
	uint32_t cap1;

	FUNC0("VC %d", ver);
	if (ver < 1)
		return;
	cap1 = FUNC1(fd, &p->pc_sel, ptr + PCIR_VC_CAP1, 4);
	FUNC0(" max VC%d", cap1 & PCIM_VC_CAP1_EXT_COUNT);
	if ((cap1 & PCIM_VC_CAP1_LOWPRI_EXT_COUNT) != 0)
		FUNC0(" lowpri VC0-VC%d",
		    (cap1 & PCIM_VC_CAP1_LOWPRI_EXT_COUNT) >> 4);
	FUNC0("\n");
}