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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 size_t FUNC1 (char const**,size_t,char) ; 

size_t
FUNC2(const char **inp, size_t ilen, char delim)
{
	const char	*sp;
	size_t		 plen;
	
	plen = FUNC1(inp, ilen, delim);
	
	/* Trim trailing whitespace */
	sp = *inp;
	while (plen > 0) {
		if (!FUNC0(*(sp + plen - 1)))
			break;
		
		plen--;
	}
	
	return (plen);
}