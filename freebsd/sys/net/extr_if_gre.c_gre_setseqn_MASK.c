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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct grehdr {int /*<<< orphan*/  gre_flags; int /*<<< orphan*/ * gre_opts; } ;

/* Variables and functions */
 int GRE_FLAGS_CP ; 
 int GRE_FLAGS_KP ; 
 int GRE_FLAGS_SP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct grehdr *gh, uint32_t seq)
{
	uint32_t *opts;
	uint16_t flags;

	opts = gh->gre_opts;
	flags = FUNC2(gh->gre_flags);
	FUNC0((flags & GRE_FLAGS_SP) != 0,
	    ("gre_setseqn called, but GRE_FLAGS_SP isn't set "));
	if (flags & GRE_FLAGS_CP)
		opts++;
	if (flags & GRE_FLAGS_KP)
		opts++;
	*opts = FUNC1(seq);
}