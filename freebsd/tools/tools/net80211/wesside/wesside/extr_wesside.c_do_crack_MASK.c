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

/* Variables and functions */
 int KEYLIMIT ; 
 int PTW_KEYHSBYTES ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  ptw ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 

int FUNC2(void)
{
	unsigned char key[PTW_KEYHSBYTES];

	if(FUNC0(ptw, key, 13, KEYLIMIT) == 1) {
		FUNC1(key, 13);
		return 1;
	}
	if(FUNC0(ptw, key, 5, KEYLIMIT/10) == 1) {
		FUNC1(key, 5);
		return 1;
	}

	return 0;
}