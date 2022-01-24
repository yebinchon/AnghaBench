#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sys; } ;
typedef  TYPE_1__ cp_board_t ;
typedef  int /*<<< orphan*/  bdrv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ cp_destroy ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (void *arg)
{
	cp_board_t *b = arg;
	bdrv_t *bd = (bdrv_t *) b->sys;
	int s;
	s = FUNC3 ();
	if (cp_destroy) {
		FUNC4 (s);
		return;
	}
	FUNC0 (bd);
	FUNC2 (b, 0);
	FUNC1 (bd);
	FUNC4 (s);
}