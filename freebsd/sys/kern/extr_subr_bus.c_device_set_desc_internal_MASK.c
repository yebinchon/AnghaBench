#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
struct TYPE_3__ {char* desc; int flags; } ;

/* Variables and functions */
 int DF_DESCMALLOCED ; 
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(device_t dev, const char* desc, int copy)
{
	if (dev->desc && (dev->flags & DF_DESCMALLOCED)) {
		FUNC1(dev->desc, M_BUS);
		dev->flags &= ~DF_DESCMALLOCED;
		dev->desc = NULL;
	}

	if (copy && desc) {
		dev->desc = FUNC2(FUNC4(desc) + 1, M_BUS, M_NOWAIT);
		if (dev->desc) {
			FUNC3(dev->desc, desc);
			dev->flags |= DF_DESCMALLOCED;
		}
	} else {
		/* Avoid a -Wcast-qual warning */
		dev->desc = (char *)(uintptr_t) desc;
	}

	FUNC0();
}