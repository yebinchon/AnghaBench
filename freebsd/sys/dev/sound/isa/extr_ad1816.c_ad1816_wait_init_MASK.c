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
struct ad1816_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816_ALE ; 
 int AD1816_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ad1816_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(struct ad1816_info *ad1816, int x)
{
    	int             n = 0;	/* to shut up the compiler... */

    	for (; x--;)
		if ((n = (FUNC1(ad1816, AD1816_ALE) & AD1816_BUSY)) == 0) FUNC0(10);
		else return n;
    	FUNC2("ad1816_wait_init failed 0x%02x.\n", n);
    	return -1;
}