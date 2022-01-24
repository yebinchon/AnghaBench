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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
struct iavf_sc {int /*<<< orphan*/  dev; TYPE_1__ vsi; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  IAVF_AQ_TIMEOUT ; 
 int /*<<< orphan*/  IAVF_FLAGS ; 
 int /*<<< orphan*/  PRI_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_sc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_sc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iavf_sc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct iavf_sc *sc, u32 op)
{
	int error = 0;
	if_ctx_t ctx = sc->vsi.ctx;

	error = FUNC5(sc, op);
	if (error != 0) {
		FUNC1(sc, "Error sending %b: %d\n", op, IAVF_FLAGS, error);
		return (error);
	}

	/* Don't wait for a response if the device is being detached. */
	if (!FUNC3(ctx)) {
		FUNC1(sc, "Sleeping for op %b\n", op, IAVF_FLAGS);
		error = FUNC6(FUNC4(sc, op),
		    FUNC2(ctx), PRI_MAX, "iavf_vc", IAVF_AQ_TIMEOUT);

		if (error == EWOULDBLOCK)
			FUNC0(sc->dev, "%b timed out\n", op, IAVF_FLAGS);
	}

	return (error);
}