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
typedef  scalar_t__ uint32_t ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sbuf*,char*,...) ; 

__attribute__((used)) static void
FUNC19(struct sbuf *sb, uint32_t fcap, uint32_t pcmcap)
{
	uint32_t cap;

	cap = fcap;
	if (cap != 0) {
		FUNC18(sb, "     Stream cap: 0x%08x", cap);
		if (FUNC15(cap))
			FUNC18(sb, " AC3");
		if (FUNC16(cap))
			FUNC18(sb, " FLOAT32");
		if (FUNC17(cap))
			FUNC18(sb, " PCM");
		FUNC18(sb, "\n");
	}
	cap = pcmcap;
	if (cap != 0) {
		FUNC18(sb, "        PCM cap: 0x%08x", cap);
		if (FUNC12(cap))
			FUNC18(sb, " 8");
		if (FUNC1(cap))
			FUNC18(sb, " 16");
		if (FUNC5(cap))
			FUNC18(sb, " 20");
		if (FUNC7(cap))
			FUNC18(sb, " 24");
		if (FUNC8(cap))
			FUNC18(sb, " 32");
		FUNC18(sb, " bits,");
		if (FUNC13(cap))
			FUNC18(sb, " 8");
		if (FUNC0(cap))
			FUNC18(sb, " 11");
		if (FUNC2(cap))
			FUNC18(sb, " 16");
		if (FUNC6(cap))
			FUNC18(sb, " 22");
		if (FUNC9(cap))
			FUNC18(sb, " 32");
		if (FUNC10(cap))
			FUNC18(sb, " 44");
		FUNC18(sb, " 48");
		if (FUNC11(cap))
			FUNC18(sb, " 88");
		if (FUNC14(cap))
			FUNC18(sb, " 96");
		if (FUNC3(cap))
			FUNC18(sb, " 176");
		if (FUNC4(cap))
			FUNC18(sb, " 192");
		FUNC18(sb, " KHz\n");
	}
}