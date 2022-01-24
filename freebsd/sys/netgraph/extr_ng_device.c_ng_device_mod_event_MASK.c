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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MAX_NGD ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngd_unit ; 

__attribute__((used)) static int
FUNC2(module_t mod, int event, void *data)
{
	int error = 0;

	switch (event) {
	case MOD_LOAD:
		ngd_unit = FUNC1(0, MAX_NGD, NULL);
		break;
	case MOD_UNLOAD:
		FUNC0(ngd_unit);
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}