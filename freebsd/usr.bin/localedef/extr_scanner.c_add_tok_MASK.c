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
 char* FUNC0 (char*,int) ; 
 char* token ; 
 int tokidx ; 
 int toksz ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(int c)
{
	if ((tokidx + 1) >= toksz) {
		toksz += 64;
		if ((token = FUNC0(token, toksz)) == NULL) {
			FUNC1("out of memory");
			tokidx = 0;
			toksz = 0;
			return;
		}
	}

	token[tokidx++] = (char)c;
	token[tokidx] = 0;
}