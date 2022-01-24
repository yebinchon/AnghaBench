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
struct pwmbus_ivars {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pwmbus_ivars*) ; 
 struct pwmbus_ivars* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static device_t
FUNC4(device_t dev, u_int order, const char *name, int unit)
{
	device_t child;
	struct pwmbus_ivars *ivars;

	child = FUNC0(dev, order, name, unit);
	if (child == NULL) 
		return (child);

	ivars = FUNC3(sizeof(struct pwmbus_ivars), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (ivars == NULL) {
		FUNC1(dev, child);
		return (NULL);
	}
	FUNC2(child, ivars);

	return (child);
}