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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_CONFIG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(const nvlist_t *schema, nvlist_t *config)
{
	int error;
	uint16_t num_vfs;

	error = FUNC1(schema, config, PF_CONFIG_NAME,
	    PF_CONFIG_NAME);
	if (error != 0)
		return (error);

	num_vfs = FUNC0(config);

	error = FUNC3(schema, config, num_vfs);
	if (error != 0)
		return (error);

	return (FUNC2(config, num_vfs));
}