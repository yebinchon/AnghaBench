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
struct params {int /*<<< orphan*/  seq; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void FUNC4(struct params *p, void *buf, int len)
{
	int rc;

	rc = FUNC2(p->tx, buf, len);
	if (rc == -1) {
		if (errno == EMSGSIZE)
			FUNC3("inject(len %d)", len);
		else
			FUNC0(1, "inject(len %d)", len);
	} else if (rc != len)
		FUNC1(1, "injected %d but only %d sent", rc, len);
	p->seq++;
}