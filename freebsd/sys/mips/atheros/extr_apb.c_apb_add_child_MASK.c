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
typedef  int /*<<< orphan*/  u_int ;
struct apb_ivar {int /*<<< orphan*/  resources; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct apb_ivar*) ; 
 struct apb_ivar* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC5(device_t bus, u_int order, const char *name, int unit)
{
	device_t		child;
	struct apb_ivar	*ivar;

	ivar = FUNC2(sizeof(struct apb_ivar), M_DEVBUF, M_WAITOK | M_ZERO);
	FUNC4(&ivar->resources);

	child = FUNC0(bus, order, name, unit);
	if (child == NULL) {
		FUNC3("Can't add child %s%d ordered\n", name, unit);
		return (0);
	}

	FUNC1(child, ivar);

	return (child);
}