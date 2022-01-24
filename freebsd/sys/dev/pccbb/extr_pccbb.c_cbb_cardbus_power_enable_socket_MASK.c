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
struct cbb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CBB_SOCKET_STATE ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cbb_softc*,int /*<<< orphan*/ ) ; 
 struct cbb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int
FUNC8(device_t brdev, device_t child)
{
	struct cbb_softc *sc = FUNC5(brdev);
	int err, count;

	if (!FUNC0(FUNC4(sc, CBB_SOCKET_STATE)))
		return (ENODEV);

	count = 10;
	do {
		err = FUNC3(brdev);
		if (err)
			return (err);
		err = FUNC2(brdev, child, 1);
		if (err) {
			FUNC6(brdev, "Reset failed, trying again.\n");
			FUNC1(brdev, child);
			FUNC7("cbbErr1", hz / 10); /* wait 100ms */
		}
	} while (err != 0 && count-- > 0);
	return (0);
}