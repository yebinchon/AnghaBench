#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  scalar_t__ u32 ;
typedef  TYPE_1__* hcb_p ;
typedef  scalar_t__ ccb_p ;
struct TYPE_6__ {int dqueueget; scalar_t__* dqueue; } ;

/* Variables and functions */
 int MAX_QUEUE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 char* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7 (hcb_p np)
{
	ccb_p cp;
	int i, n;
	u32 dsa;

	FUNC1(MA_OWNED);

	n = 0;
	i = np->dqueueget;
	while (1) {
		dsa = FUNC3(np->dqueue[i]);
		if (!dsa)
			break;
		np->dqueue[i] = 0;
		if ((i = i+2) >= MAX_QUEUE*2)
			i = 0;

		cp = FUNC4(np, dsa);
		if (cp) {
			FUNC0();
			FUNC5 (np, cp);
			++n;
		}
		else
			FUNC2 ("%s: bad DSA (%x) in done queue.\n",
				FUNC6(np), (u_int) dsa);
	}
	np->dqueueget = i;

	return n;
}