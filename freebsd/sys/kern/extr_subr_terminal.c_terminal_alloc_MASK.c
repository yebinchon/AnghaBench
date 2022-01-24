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
struct terminal_class {int dummy; } ;
struct terminal {void* tm_softc; struct terminal_class const* tm_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TERMINAL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct terminal* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct terminal*) ; 

struct terminal *
FUNC2(const struct terminal_class *tc, void *softc)
{
	struct terminal *tm;

	tm = FUNC0(sizeof(struct terminal), M_TERMINAL, M_WAITOK|M_ZERO);
	FUNC1(tm);

	tm->tm_class = tc;
	tm->tm_softc = softc;

	return (tm);
}