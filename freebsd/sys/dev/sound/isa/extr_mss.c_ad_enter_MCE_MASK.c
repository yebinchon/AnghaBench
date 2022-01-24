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
struct mss_info {int /*<<< orphan*/  bd_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_F_MCE_BIT ; 
 int /*<<< orphan*/  MSS_INDEX ; 
 int MSS_MCE ; 
 int MSS_TRD ; 
 int /*<<< orphan*/  FUNC0 (struct mss_info*,int) ; 
 int FUNC1 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mss_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct mss_info *mss)
{
    	int prev;

    	mss->bd_flags |= BD_F_MCE_BIT;
    	FUNC0(mss, 203000);
    	prev = FUNC1(mss, MSS_INDEX);
    	prev &= ~MSS_TRD;
    	FUNC2(mss, MSS_INDEX, prev | MSS_MCE);
}