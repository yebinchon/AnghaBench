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
struct sysinit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (struct sysinit**,int /*<<< orphan*/ ) ; 
 struct sysinit** FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sysinit** newsysinit ; 
 struct sysinit** newsysinit_end ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct sysinit** sysinit ; 
 struct sysinit** sysinit_end ; 

void
FUNC3(struct sysinit **set, struct sysinit **set_end)
{
	struct sysinit **newset;
	struct sysinit **sipp;
	struct sysinit **xipp;
	int count;

	count = set_end - set;
	if (newsysinit)
		count += newsysinit_end - newsysinit;
	else
		count += sysinit_end - sysinit;
	newset = FUNC1(count * sizeof(*sipp), M_TEMP, M_NOWAIT);
	if (newset == NULL)
		FUNC2("cannot malloc for sysinit");
	xipp = newset;
	if (newsysinit)
		for (sipp = newsysinit; sipp < newsysinit_end; sipp++)
			*xipp++ = *sipp;
	else
		for (sipp = sysinit; sipp < sysinit_end; sipp++)
			*xipp++ = *sipp;
	for (sipp = set; sipp < set_end; sipp++)
		*xipp++ = *sipp;
	if (newsysinit)
		FUNC0(newsysinit, M_TEMP);
	newsysinit = newset;
	newsysinit_end = newset + count;
}