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
struct sx {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iflib_pseudodev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sx*) ; 
 int /*<<< orphan*/  FUNC10 (struct sx*) ; 

__attribute__((used)) static void
FUNC11(if_t ifp)
{
	if_ctx_t ctx;
	device_t dev;
	struct sx *ctx_lock;
	int rc;

	/*
	 * Detach device / free / free unit 
	 */
	ctx = FUNC1(ifp);
	dev = FUNC3(ctx);
	ctx_lock = FUNC2(ctx);
	FUNC9(ctx_lock);
	FUNC5(ctx);
	FUNC6(ctx);
	FUNC10(ctx_lock);

	FUNC7(&Giant);
	rc = FUNC0(iflib_pseudodev, dev);
	FUNC8(&Giant);
	if (rc == 0)
		FUNC4(ctx);
}