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
struct mbuf {int dummy; } ;

/* Variables and functions */
 int MC_RAW_WR ; 
 int FUNC0 (struct mbuf*) ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 

__attribute__((used)) static inline int
FUNC2(struct mbuf *m)
{
	/* maybe put a GL limit too, to avoid silliness? */

	return (FUNC1(m) || (FUNC0(m) & MC_RAW_WR) != 0);
}