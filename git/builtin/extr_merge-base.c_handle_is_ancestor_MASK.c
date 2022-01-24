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
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct commit* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (struct commit*,struct commit*) ; 

__attribute__((used)) static int FUNC3(int argc, const char **argv)
{
	struct commit *one, *two;

	if (argc != 2)
		FUNC0("--is-ancestor takes exactly two commits");
	one = FUNC1(argv[0]);
	two = FUNC1(argv[1]);
	if (FUNC2(one, two))
		return 0;
	else
		return 1;
}