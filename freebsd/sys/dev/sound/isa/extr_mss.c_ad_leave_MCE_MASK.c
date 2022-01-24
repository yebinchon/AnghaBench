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
typedef  int u_char ;
struct mss_info {int bd_flags; } ;

/* Variables and functions */
 int BD_F_MCE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSS_INDEX ; 
 int MSS_MCE ; 
 int MSS_TRD ; 
 int /*<<< orphan*/  FUNC1 (struct mss_info*,int) ; 
 int FUNC2 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mss_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mss_info*) ; 

__attribute__((used)) static void
FUNC6(struct mss_info *mss)
{
    	u_char   prev;

    	if ((mss->bd_flags & BD_F_MCE_BIT) == 0) {
		FUNC0(FUNC4("--- hey, leave_MCE: MCE bit was not set!\n"));
		return;
    	}

    	FUNC1(mss, 1000000);

    	mss->bd_flags &= ~BD_F_MCE_BIT;

    	prev = FUNC2(mss, MSS_INDEX);
    	prev &= ~MSS_TRD;
    	FUNC3(mss, MSS_INDEX, prev & ~MSS_MCE); /* Clear the MCE bit */
    	FUNC5(mss);
}