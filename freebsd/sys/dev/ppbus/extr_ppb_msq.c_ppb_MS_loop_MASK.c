#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ppb_microseq {TYPE_1__* arg; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int i; void* p; } ;

/* Variables and functions */
 struct ppb_microseq FUNC0 (int /*<<< orphan*/ ) ; 
 struct ppb_microseq FUNC1 (int) ; 
 struct ppb_microseq FUNC2 (int /*<<< orphan*/ ) ; 
 struct ppb_microseq FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_UNKNOWN ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ppb_microseq*,int*) ; 

int
FUNC5(device_t bus, device_t dev, struct ppb_microseq *prolog,
		struct ppb_microseq *body, struct ppb_microseq *epilog,
		int iter, int *ret)
{
	struct ppb_microseq loop_microseq[] = {
		  FUNC0(0),			/* execute prolog */

		  FUNC3(MS_UNKNOWN),		/* set size of transfer */
	/* loop: */
		  FUNC0(0),			/* execute body */
		  FUNC1(-1 /* loop: */),

		  FUNC0(0),			/* execute epilog */
		  FUNC2(0)
	};

	/* initialize the structure */
	loop_microseq[0].arg[0].p = (void *)prolog;
	loop_microseq[1].arg[0].i = iter;
	loop_microseq[2].arg[0].p = (void *)body;
	loop_microseq[4].arg[0].p = (void *)epilog;

	/* execute the loop */
	return (FUNC4(bus, dev, loop_microseq, ret));
}