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
typedef  int /*<<< orphan*/  timestamp_t ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(struct object_id *ooid, struct object_id *noid,
		const char *email, timestamp_t timestamp, int tz,
		const char *message, void *cb_data)
{
	const char *refname = cb_data;

	if (verbose)
		FUNC1(stderr, FUNC0("Checking reflog %s->%s"),
			   FUNC3(ooid), FUNC3(noid));

	FUNC2(refname, ooid, 0);
	FUNC2(refname, noid, timestamp);
	return 0;
}