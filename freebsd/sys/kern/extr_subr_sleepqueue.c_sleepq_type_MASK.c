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
struct sleepqueue {int sq_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct sleepqueue* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

int
FUNC4(void *wchan)
{
	struct sleepqueue *sq;
	int type;

	FUNC0(wchan != NULL);

	FUNC1(wchan);
	sq = FUNC2(wchan);
	if (sq == NULL) {
		FUNC3(wchan);
		return (-1);
	}
	type = sq->sq_type;
	FUNC3(wchan);
	return (type);
}