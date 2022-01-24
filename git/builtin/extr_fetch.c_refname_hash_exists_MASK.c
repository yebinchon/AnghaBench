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
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashmap*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(struct hashmap *map, const char *refname)
{
	return !!FUNC0(map, FUNC1(refname), refname);
}