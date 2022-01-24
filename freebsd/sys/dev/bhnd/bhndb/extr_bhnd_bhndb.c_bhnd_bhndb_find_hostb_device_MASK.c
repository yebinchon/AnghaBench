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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bhnd_core_info*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct bhnd_core_match*) ; 
 struct bhnd_core_match FUNC2 (struct bhnd_core_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC4(device_t dev)
{
	struct bhnd_core_info	 core;
	struct bhnd_core_match	 md;
	int			 error;

	/* Ask the bridge for the hostb core info */
	if ((error = FUNC0(FUNC3(dev), dev, &core)))
		return (NULL);

	/* Find the corresponding bus device */
	md = FUNC2(&core);
	return (FUNC1(dev, &md));
}