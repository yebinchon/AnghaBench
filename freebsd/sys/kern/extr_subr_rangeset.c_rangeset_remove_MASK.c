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
typedef  int /*<<< orphan*/  uint64_t ;
struct rangeset {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rangeset*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rangeset_true_pred ; 

int
FUNC1(struct rangeset *rs, uint64_t start, uint64_t end)
{

	return (FUNC0(rs, start, end, rangeset_true_pred));
}