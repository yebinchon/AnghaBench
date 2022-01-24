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
struct hhook_head {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct hhook_head*) ; 
 struct hhook_head* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hhook_head*) ; 

int
FUNC3(int32_t hhook_type, int32_t hhook_id)
{
	struct hhook_head *hhh;
	int error;

	hhh = FUNC1(hhook_type, hhook_id);
	error = FUNC0(hhh);

	if (error == EBUSY)
		FUNC2(hhh);

	return (error);
}