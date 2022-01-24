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
typedef  char u_char ;
struct TYPE_3__ {int xsize; int ysize; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 char* cut_buffer ; 
 int cut_buffer_size ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(scr_stat *scp, int wait)
{
    u_char *p;

    if ((cut_buffer == NULL)
	|| (cut_buffer_size < scp->xsize * scp->ysize + 1)) {
	p = cut_buffer;
	cut_buffer = NULL;
	if (p != NULL)
	    FUNC0(p, M_DEVBUF);
	cut_buffer_size = scp->xsize * scp->ysize + 1;
	p = (u_char *)FUNC1(cut_buffer_size, 
			     M_DEVBUF, (wait) ? M_WAITOK : M_NOWAIT);
	if (p != NULL)
	    p[0] = '\0';
	cut_buffer = p;
    }
}