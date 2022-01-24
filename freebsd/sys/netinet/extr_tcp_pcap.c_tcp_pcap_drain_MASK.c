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
struct mbufq {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 struct mbuf* FUNC0 (struct mbufq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 

void
FUNC2(struct mbufq *queue)
{
	struct mbuf *m;
	while ((m = FUNC0(queue)))
		FUNC1(m);
}