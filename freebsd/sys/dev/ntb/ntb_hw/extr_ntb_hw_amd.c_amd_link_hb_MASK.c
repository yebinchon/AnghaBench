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
struct amd_ntb_softc {int /*<<< orphan*/  hb_timer; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int AMD_LINK_HB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct amd_ntb_softc*) ; 
 scalar_t__ FUNC1 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void (*) (void*),struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct amd_ntb_softc *ntb = arg;

	if (FUNC1(ntb))
		FUNC3(ntb->device);

	if (!FUNC0(ntb)) {
		FUNC2(&ntb->hb_timer, AMD_LINK_HB_TIMEOUT,
		    amd_link_hb, ntb);
	} else {
		FUNC2(&ntb->hb_timer, (AMD_LINK_HB_TIMEOUT * 10),
		    amd_link_hb, ntb);
	}
}