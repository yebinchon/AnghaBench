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
typedef  int uint64_t ;
struct trapframe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_HANDLE_HMI2 ; 
 int OPAL_HMI_FLAGS_TOD_TB_FAIL ; 
 int OPAL_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static int
FUNC4(struct trapframe *frame)
{
	uint64_t flags;
	int err;

	flags = 0;
	err = FUNC0(OPAL_HANDLE_HMI2, FUNC3(&flags));

	if (flags & OPAL_HMI_FLAGS_TOD_TB_FAIL)
		FUNC1("TOD/TB recovery failure");

	if (err == OPAL_SUCCESS)
		return (0);

	FUNC2("HMI handler failed!  OPAL error code: %d\n", err);

	return (-1);
}