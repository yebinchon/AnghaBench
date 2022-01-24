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

/* Variables and functions */
#define  COMMIT_AS_IS 130 
#define  COMMIT_NORMAL 129 
#define  COMMIT_PARTIAL 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int commit_style ; 
 int /*<<< orphan*/  false_lock ; 
 int /*<<< orphan*/  index_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	int err = 0;

	switch (commit_style) {
	case COMMIT_AS_IS:
		break; /* nothing to do */
	case COMMIT_NORMAL:
		err = FUNC0(&index_lock);
		break;
	case COMMIT_PARTIAL:
		err = FUNC0(&index_lock);
		FUNC1(&false_lock);
		break;
	}

	return err;
}