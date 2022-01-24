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
struct bhndb_resources {int /*<<< orphan*/  dwa_count; int /*<<< orphan*/  dwa_freelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static inline bool
FUNC1(struct bhndb_resources *br)
{
	int bit;
	FUNC0(br->dwa_freelist, br->dwa_count, &bit);
	return (bit == -1);
}