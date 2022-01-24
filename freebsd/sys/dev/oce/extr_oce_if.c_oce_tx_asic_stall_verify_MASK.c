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
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 

__attribute__((used)) static int 
FUNC3(POCE_SOFTC sc, struct mbuf *m)
{
	if(FUNC1(sc) && FUNC0(sc) && \
			FUNC2(m)) {
		return TRUE;
	}
	return FALSE;
}