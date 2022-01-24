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
typedef  int uint8_t ;
struct krb5_key_state {int* ks_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct krb5_key_state*,int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

__attribute__((used)) static void
FUNC3(struct krb5_key_state *ks, const void *in)
{
	uint8_t *outkey = ks->ks_key;
	const uint8_t *inkey = in;

	/*
	 * Expand 56 bits of random data to 64 bits as follows
	 * (in the example, bit number 1 is the MSB of the 56
	 * bits of random data):
	 *
	 * expanded = 
	 *	 1  2  3  4  5  6  7  p
	 *	 9 10 11 12 13 14 15  p
	 *	17 18 19 20 21 22 23  p
	 *	25 26 27 28 29 30 31  p
	 *	33 34 35 36 37 38 39  p
	 *	41 42 43 44 45 46 47  p
	 *	49 50 51 52 53 54 55  p
	 *	56 48 40 32 24 16  8  p
	 */
	outkey[0] = inkey[0];
	outkey[1] = inkey[1];
	outkey[2] = inkey[2];
	outkey[3] = inkey[3];
	outkey[4] = inkey[4];
	outkey[5] = inkey[5];
	outkey[6] = inkey[6];
	outkey[7] = (((inkey[0] & 1) << 1)
	    | ((inkey[1] & 1) << 2)
	    | ((inkey[2] & 1) << 3)
	    | ((inkey[3] & 1) << 4)
	    | ((inkey[4] & 1) << 5)
	    | ((inkey[5] & 1) << 6)
	    | ((inkey[6] & 1) << 7));
	FUNC2(outkey);
	if (FUNC1(outkey))
		outkey[7] ^= 0xf0;

	FUNC0(ks, ks->ks_key);
}