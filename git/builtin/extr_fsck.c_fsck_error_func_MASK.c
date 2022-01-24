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
struct object {int dummy; } ;
struct fsck_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  FSCK_ERROR 129 
#define  FSCK_WARN 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct object*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(struct fsck_options *o,
	struct object *obj, int type, const char *message)
{
	switch (type) {
	case FSCK_WARN:
		/* TRANSLATORS: e.g. warning in tree 01bfda: <more explanation> */
		FUNC3(stderr, FUNC1("warning in %s %s: %s"),
			   FUNC4(obj), FUNC2(obj), message);
		return 0;
	case FSCK_ERROR:
		/* TRANSLATORS: e.g. error in tree 01bfda: <more explanation> */
		FUNC3(stderr, FUNC1("error in %s %s: %s"),
			   FUNC4(obj), FUNC2(obj), message);
		return 1;
	default:
		FUNC0("%d (FSCK_IGNORE?) should never trigger this callback", type);
	}
}