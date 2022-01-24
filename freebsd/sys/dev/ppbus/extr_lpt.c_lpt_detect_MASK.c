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
typedef  int u_char ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PPB_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	device_t ppbus = FUNC0(dev);

	static u_char	testbyte[18] = {
		0x55,			/* alternating zeros */
		0xaa,			/* alternating ones */
		0xfe, 0xfd, 0xfb, 0xf7,
		0xef, 0xdf, 0xbf, 0x7f,	/* walking zero */
		0x01, 0x02, 0x04, 0x08,
		0x10, 0x20, 0x40, 0x80	/* walking one */
	};
	int		i, error, status;

	status = 1;				/* assume success */

	FUNC5(ppbus);
	if ((error = FUNC4(dev, PPB_DONTWAIT))) {
		FUNC6(ppbus);
		FUNC1(dev, "cannot alloc ppbus (%d)!\n", error);
		return (0);
	}

	for (i = 0; i < 18 && status; i++)
		if (!FUNC2(ppbus, testbyte[i], 0xff)) {
			status = 0;
			break;
		}

	/* write 0's to control and data ports */
	FUNC8(ppbus, 0);
	FUNC7(ppbus, 0);

	FUNC3(dev);
	FUNC6(ppbus);

	return (status);
}