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
struct params {int packet_try; int /*<<< orphan*/  plast; int /*<<< orphan*/  packet_len; int /*<<< orphan*/  packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct params *p)
{
#if 0
	printf("RETRANS %d\n", p->packet_try);
#endif

	FUNC3(p, p->packet, p->packet_len);
	p->packet_try++;

	if (p->packet_try > 3)
		p->packet_try = 0;
	else {
		if (FUNC1(&p->plast, NULL) == -1)
			FUNC0(1, "gettimeofday()");
	}

	return p->packet_try;
}