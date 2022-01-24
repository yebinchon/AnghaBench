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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  AR_Q_ONESHOTARM_CC ; 
 int /*<<< orphan*/  AR_Q_ONESHOTARM_SC ; 
 int /*<<< orphan*/  AR_Q_RDYTIMESHDN ; 
 int /*<<< orphan*/  AR_Q_TXD ; 
 int /*<<< orphan*/  AR_Q_TXE ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ah ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC7(FILE *fd, int what)
{
	int i;

	/* QCU registers */
	FUNC6(fd, "%-8s %08x  %-8s %08x  %-8s %08x\n"
		, "Q_TXE", FUNC5(ah, AR_Q_TXE)
		, "Q_TXD", FUNC5(ah, AR_Q_TXD)
		, "Q_RDYTIMSHD", FUNC5(ah, AR_Q_RDYTIMESHDN)
	);
	FUNC6(fd, "Q_ONESHOTARM_SC %08x  Q_ONESHOTARM_CC %08x\n"
		, FUNC5(ah, AR_Q_ONESHOTARM_SC)
		, FUNC5(ah, AR_Q_ONESHOTARM_CC)
	);
	for (i = 0; i < 10; i++)
		FUNC6(fd, "Q[%u] TXDP %08x CBR %08x RDYT %08x MISC %08x STS %08x\n"
			, i
			, FUNC5(ah, FUNC4(i))
			, FUNC5(ah, FUNC0(i))
			, FUNC5(ah, FUNC2(i))
			, FUNC5(ah, FUNC1(i))
			, FUNC5(ah, FUNC3(i))
		);
}