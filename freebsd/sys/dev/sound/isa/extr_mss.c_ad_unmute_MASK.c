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
struct mss_info {int dummy; } ;

/* Variables and functions */
 int I6_MUTE ; 
 int FUNC0 (struct mss_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mss_info*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct mss_info *mss)
{
    	FUNC1(mss, 6, FUNC0(mss, 6) & ~I6_MUTE);
    	FUNC1(mss, 7, FUNC0(mss, 7) & ~I6_MUTE);
}