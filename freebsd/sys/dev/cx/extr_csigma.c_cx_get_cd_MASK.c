#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mode; int num; TYPE_1__* board; int /*<<< orphan*/  type; int /*<<< orphan*/  port; } ;
typedef  TYPE_2__ cx_chan_t ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_SIGMA_2X ; 
 scalar_t__ B_SIGMA_800 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MSV_CD ; 
 scalar_t__ M_ASYNC ; 
 int /*<<< orphan*/  T_UNIV_RS232 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6 (cx_chan_t *c)
{
	unsigned char sigval;

	if (c->board->type == B_SIGMA_2X ||
	    c->board->type == B_SIGMA_800 ||
	    c->mode == M_ASYNC) {
		FUNC5 (FUNC1(c->port), c->num & 3);
		return (FUNC3 (FUNC2(c->port)) & MSV_CD ? 1 : 0);
	}

	/*
	 * Channels 4..7 and 12..15 don't have CD signal available.
	 */
	switch (c->num) {
	default:
		return (1);

	case 1: case 2:  case 3:
		if (c->type == T_UNIV_RS232)
			return (1);
	case 0:
		sigval = FUNC4 (FUNC0(c->board->port)) >> 8;
		break;

	case 9: case 10: case 11:
		if (c->type == T_UNIV_RS232)
			return (1);
	case 8:
		sigval = FUNC4 (FUNC0(c->board->port+0x10)) >> 8;
		break;
	}
	return (~sigval >> 4 >> (c->num & 3) & 1);
}