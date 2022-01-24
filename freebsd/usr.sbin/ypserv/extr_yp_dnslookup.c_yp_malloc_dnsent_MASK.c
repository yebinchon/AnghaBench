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
struct circleq_dnsentry {int dummy; } ;

/* Variables and functions */
 struct circleq_dnsentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static struct
circleq_dnsentry *FUNC2(void)
{
	register struct circleq_dnsentry *q;

	q = FUNC0(sizeof(struct circleq_dnsentry));

	if (q == NULL) {
		FUNC1("failed to malloc() circleq dns entry");
		return(NULL);
	}

	return(q);
}