#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kc_arg; int /*<<< orphan*/  (* kc_func ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {TYPE_1__ kb_callback; } ;
typedef  TYPE_2__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KBDIO_KEYINPUT ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int NOKEY ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(keyboard_t *kbd, void *arg)
{
	int	c;

	if (FUNC0(kbd) && FUNC1(kbd)) {
		/* let the callback function to process the input */
		(*kbd->kb_callback.kc_func)(kbd, KBDIO_KEYINPUT,
					    kbd->kb_callback.kc_arg);
	} else {
		/* read and discard the input; no one is waiting for input */
		do {
			c = FUNC2(kbd, FALSE);
		} while (c != NOKEY);
	}

	return (0);
}