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
struct mpt_softc {scalar_t__ request_dmat; scalar_t__ buffer_dmat; int /*<<< orphan*/  request_dmap; int /*<<< orphan*/  request; TYPE_1__* request_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmap; } ;

/* Variables and functions */
 int FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(struct mpt_softc *mpt)
{
	int i;

	if (mpt->request_dmat == 0) {
		FUNC5(mpt, MPT_PRT_DEBUG, "already released dma memory\n");
		return;
	}
	for (i = 0; i < FUNC0(mpt); i++) {
		FUNC2(mpt->buffer_dmat, mpt->request_pool[i].dmap);
	}
	FUNC3(mpt->request_dmat, mpt->request_dmap);
	FUNC4(mpt->request_dmat, mpt->request, mpt->request_dmap);
	FUNC1(mpt->request_dmat);
	mpt->request_dmat = 0;
	FUNC1(mpt->buffer_dmat);
}