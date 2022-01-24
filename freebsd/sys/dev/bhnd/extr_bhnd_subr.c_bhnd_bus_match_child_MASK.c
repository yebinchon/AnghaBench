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
struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ FUNC0 (struct bhnd_core_info*,struct bhnd_core_match const*) ; 
 struct bhnd_core_info FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

device_t
FUNC4(device_t bus, const struct bhnd_core_match *desc)
{
	device_t	*devlistp;
	device_t	 match;
	int		 devcnt;
	int		 error;

	error = FUNC2(bus, &devlistp, &devcnt);
	if (error != 0)
		return (NULL);

	match = NULL;
	for (int i = 0; i < devcnt; i++) {
		struct bhnd_core_info ci = FUNC1(devlistp[i]);

		if (FUNC0(&ci, desc)) {
			match = devlistp[i];
			goto done;
		}
	}

done:
	FUNC3(devlistp, M_TEMP);
	return match;
}