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
 int UNKNOWN_LENGTH ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC2(char *str, int slen, char *token)
{
	int tlen, i;

#define UNKNOWN_LENGTH	-1

	if (slen == UNKNOWN_LENGTH)
		/* get string's length */
		slen = FUNC0(str);

	/* get token's length */
	tlen = FUNC0(token);
	if (tlen == 0)
		return (str);

	for (i = 0; i <= slen-tlen; i++) {
		if (FUNC1(str + i, token, tlen) == 0)
			return (&str[i]);
	}

	return (NULL);
}