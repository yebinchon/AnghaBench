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
struct mpt_softc {int /*<<< orphan*/  path; int /*<<< orphan*/  request_timeout_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int /*<<< orphan*/  MPI_IOCSTATUS_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct mpt_softc *mpt, int type)
{

	/*
	 * The pending list is already run down by
	 * the generic handler.  Perform the same
	 * operation on the timed out request list.
	 */
	FUNC0(mpt, &mpt->request_timeout_list,
				   MPI_IOCSTATUS_INVALID_STATE);

	/*
	 * XXX: We need to repost ELS and Target Command Buffers?
	 */

	/*
	 * Inform the XPT that a bus reset has occurred.
	 */
	FUNC1(AC_BUS_RESET, mpt->path, NULL);
}