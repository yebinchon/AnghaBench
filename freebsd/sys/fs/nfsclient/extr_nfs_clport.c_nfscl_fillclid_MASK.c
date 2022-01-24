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
typedef  scalar_t__ u_int8_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int u_int16_t ;
typedef  char* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*,int) ; 
 int FUNC1 () ; 
 int FUNC2 (char*) ; 

void
FUNC3(u_int64_t clval, char *uuid, u_int8_t *cp, u_int16_t idlen)
{
	int uuidlen;

	/*
	 * First, put in the 64bit mount point identifier.
	 */
	if (idlen >= sizeof (u_int64_t)) {
		FUNC0((caddr_t)&clval, cp, sizeof (u_int64_t));
		cp += sizeof (u_int64_t);
		idlen -= sizeof (u_int64_t);
	}

	/*
	 * If uuid is non-zero length, use it.
	 */
	uuidlen = FUNC2(uuid);
	if (uuidlen > 0 && idlen >= uuidlen) {
		FUNC0(uuid, cp, uuidlen);
		cp += uuidlen;
		idlen -= uuidlen;
	}

	/*
	 * This only normally happens if the uuid isn't set.
	 */
	while (idlen > 0) {
		*cp++ = (u_int8_t)(FUNC1() % 256);
		idlen--;
	}
}