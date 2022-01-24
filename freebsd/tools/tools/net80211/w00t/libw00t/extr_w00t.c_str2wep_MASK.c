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
 int FUNC0 (char*,char*,unsigned int*) ; 
 int FUNC1 (char*) ; 

int FUNC2(char *wep, int *len, char *str)
{
	int klen;

	klen = FUNC1(str);
	if (klen % 2)
		return -1;
	klen /= 2;

	if (klen != 5 && klen != 13)
		return -1;

	*len = klen;

	while (klen--) {
		unsigned int x;

		if (FUNC0(str, "%2x", &x) != 1)
			return -1;
		
		*wep = (unsigned char) x;
		wep++;
		str += 2;
	}

	return 0;
}