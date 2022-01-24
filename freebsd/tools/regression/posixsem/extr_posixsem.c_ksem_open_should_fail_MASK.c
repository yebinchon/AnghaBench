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
typedef  int /*<<< orphan*/  semid_t ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(const char *path, int flags, mode_t mode, unsigned int
    value, int error)
{
	semid_t id;

	if (FUNC3(&id, path, flags, mode, value) >= 0) {
		FUNC0("ksem_open() didn't fail");
		FUNC2(id);
		return;
	}
	if (errno != error) {
		FUNC1("ksem_open");
		return;
	}
	FUNC4();
}