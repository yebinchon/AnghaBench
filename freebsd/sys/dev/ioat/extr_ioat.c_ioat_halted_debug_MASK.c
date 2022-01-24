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
typedef  union ioat_hw_descriptor {int dummy; } ioat_hw_descriptor ;
typedef  scalar_t__ uint32_t ;
struct ioat_softc {scalar_t__ tail; int /*<<< orphan*/  cleanup_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOAT_CHANERR_STR ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (union ioat_hw_descriptor*) ; 
 union ioat_hw_descriptor* FUNC1 (struct ioat_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ioat_softc *ioat, uint32_t chanerr)
{
	union ioat_hw_descriptor *desc;

	FUNC2(0, "Channel halted (%b)\n", (int)chanerr,
	    IOAT_CHANERR_STR);
	if (chanerr == 0)
		return;

	FUNC3(&ioat->cleanup_lock, MA_OWNED);

	desc = FUNC1(ioat, ioat->tail + 0);
	FUNC0(desc);

	desc = FUNC1(ioat, ioat->tail + 1);
	FUNC0(desc);
}