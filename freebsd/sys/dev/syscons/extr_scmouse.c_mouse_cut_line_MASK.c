#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int status; scalar_t__ xsize; int /*<<< orphan*/  mouse_pos; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 int MOUSE_CUTTING ; 
 int MOUSE_VISIBLE ; 
 char* cut_buffer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(scr_stat *scp)
{
    int len;
    int from;

    if (scp->status & MOUSE_VISIBLE) {
	from = FUNC1(scp->mouse_pos, scp->xsize);
	FUNC0(scp, from, from + scp->xsize - 1);
	len = FUNC2(cut_buffer);
	if (cut_buffer[len - 1] == '\r')
	    cut_buffer[len - 1] = '\0';
	scp->status |= MOUSE_CUTTING;
    }
}