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
struct key_value {int /*<<< orphan*/  k; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ debug_sort ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC4(struct key_value *kv1, struct key_value *kv2, size_t offset)
{

	if (debug_sort) {
		if (offset)
			FUNC3("; offset=%d\n", (int) offset);
		FUNC2(stdout, kv1->k, "; k1=<", ">");
		FUNC3("(%zu)", FUNC0(kv1->k));
		FUNC2(stdout, kv2->k, ", k2=<", ">");
		FUNC3("(%zu)", FUNC0(kv2->k));
	}

	return (FUNC1(kv1->k, kv2->k, offset));
}