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
struct mpt_softc {int /*<<< orphan*/ * request_pool; int /*<<< orphan*/ * reply_dmat; int /*<<< orphan*/ * parent_dmat; int /*<<< orphan*/  reply_dmap; int /*<<< orphan*/  reply; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct mpt_softc *mpt)
{

        /* Make sure we aren't double destroying */
        if (mpt->reply_dmat == 0) {
		FUNC4(mpt, MPT_PRT_DEBUG, "already released dma memory\n");
		return;
        }
                
	FUNC1(mpt->reply_dmat, mpt->reply_dmap);
	FUNC2(mpt->reply_dmat, mpt->reply, mpt->reply_dmap);
	FUNC0(mpt->reply_dmat);
	FUNC0(mpt->parent_dmat);
	mpt->reply_dmat = NULL;
	FUNC3(mpt->request_pool, M_DEVBUF);
	mpt->request_pool = NULL;
}