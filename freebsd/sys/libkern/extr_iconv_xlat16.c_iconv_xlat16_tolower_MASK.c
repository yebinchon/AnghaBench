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
struct iconv_xlat16 {int** d_table; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int XLAT16_HAS_LOWER_CASE ; 

__attribute__((used)) static int
FUNC2(void *d2p, int c)
{
        struct iconv_xlat16 *dp = (struct iconv_xlat16*)d2p;
	int c1, c2, out;

	if (c < 0x100) {
		c1 = FUNC0(c << 8);
		c2 = FUNC1(c << 8);
	} else if (c < 0x10000) {
                c1 = FUNC0(c);
                c2 = FUNC1(c);
	} else
		return (c);

	if (dp->d_table[c1] && dp->d_table[c1][c2] & XLAT16_HAS_LOWER_CASE) {
		/*return (int)(dp->d_table[c1][c2] & 0xffff);*/
		out = dp->d_table[c1][c2] & 0xffff;
		if ((out & 0xff) == 0)
			out = (out >> 8) & 0xff;
		return (out);
	} else
		return (c);
}