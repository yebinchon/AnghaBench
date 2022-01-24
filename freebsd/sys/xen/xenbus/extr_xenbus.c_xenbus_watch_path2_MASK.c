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
typedef  int /*<<< orphan*/  xs_watch_cb_t ;
struct xs_watch {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  M_XENBUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,struct xs_watch*,int /*<<< orphan*/ *,uintptr_t) ; 

int
FUNC6(device_t dev, const char *path,
    const char *path2, struct xs_watch *watch, 
    xs_watch_cb_t *callback, uintptr_t callback_data)
{
	int error;
	char *state = FUNC1(FUNC4(path) + 1 + FUNC4(path2) + 1,
	   M_XENBUS, M_WAITOK);

	FUNC3(state, path);
	FUNC2(state, "/");
	FUNC2(state, path2);

	error = FUNC5(dev, state, watch, callback, callback_data);
	if (error) {
		FUNC0(state,M_XENBUS);
	}

	return (error);
}