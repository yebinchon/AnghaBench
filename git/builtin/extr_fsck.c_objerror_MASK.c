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

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object*) ; 
 int /*<<< orphan*/  errors_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct object*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(struct object *obj, const char *err)
{
	errors_found |= ERROR_OBJECT;
	/* TRANSLATORS: e.g. error in tree 01bfda: <more explanation> */
	FUNC2(stderr, FUNC0("error in %s %s: %s"),
		   FUNC3(obj), FUNC1(obj), err);
	return -1;
}