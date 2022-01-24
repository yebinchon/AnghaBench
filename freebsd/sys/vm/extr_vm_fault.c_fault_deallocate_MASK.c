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
struct faultstate {scalar_t__ object; scalar_t__ first_object; int /*<<< orphan*/ * first_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct faultstate *fs)
{

	FUNC5(fs->object);
	if (fs->object != fs->first_object) {
		FUNC0(fs->first_object);
		FUNC6(fs->first_m);
		FUNC5(fs->first_object);
		FUNC1(fs->first_object);
		fs->first_m = NULL;
	}
	FUNC4(fs->first_object);
	FUNC2(fs);
	FUNC3(fs);
}