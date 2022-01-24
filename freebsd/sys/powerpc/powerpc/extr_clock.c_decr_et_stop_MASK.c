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
typedef  int uint32_t ;
struct eventtimer {int dummy; } ;
struct decr_state {int div; scalar_t__ mode; } ;

/* Variables and functions */
 struct decr_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPR_TCR ; 
 int TCR_ARE ; 
 int TCR_DIE ; 
 int /*<<< orphan*/  decr_state ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct eventtimer *et)
{
	struct decr_state *s = FUNC0(decr_state);
#ifdef BOOKE
	uint32_t tcr;
#endif

	s->mode = 0;
	s->div = 0x7fffffff;
#ifdef BOOKE
	tcr = mfspr(SPR_TCR);
	tcr &= ~(TCR_DIE | TCR_ARE);
	mtspr(SPR_TCR, tcr);
#else
	FUNC2(s->div);
#endif
	return (0);
}