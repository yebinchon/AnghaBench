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
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC2(ctx);
	device_t       dev = FUNC1(ctx);
	int            error = 0;

	/* Setup OS specific network interface */
	error = FUNC6(ctx);
	if (error) {
		FUNC0(dev, "Interface setup failed: %d\n", error);
		goto end;
	}

	/* Do the stats setup */
	FUNC5(adapter);
	FUNC4(adapter);
	FUNC3(adapter);

end:
	return error;
}