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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  loose ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  loose_size ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 scalar_t__ FUNC4 (struct stat) ; 
 int /*<<< orphan*/  packed_loose ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC5(const struct object_id *oid, const char *path, void *data)
{
	struct stat st;

	if (FUNC3(path, &st) || !FUNC0(st.st_mode))
		FUNC2(path);
	else {
		loose_size += FUNC4(st);
		loose++;
		if (verbose && FUNC1(oid))
			packed_loose++;
	}
	return 0;
}