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
typedef  int u_char ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int CHAR_BIT ; 
 int FUNC0 (int,int) ; 
 int* FUNC1 (struct sockaddr*,int*) ; 

__attribute__((used)) static int
FUNC2(struct sockaddr_storage *ssp, int bitlen)
{
	u_char *p;
	int bits, i, len;

	if ((p = FUNC1((struct sockaddr *)ssp, &len)) == NULL)
		return (-1);
	if (bitlen > len * CHAR_BIT)
		return (-1);

	for (i = 0; i < len; i++) {
		bits = FUNC0(CHAR_BIT, bitlen);
		*p++ = (u_char)~0 << (CHAR_BIT - bits);
		bitlen -= bits;
	}
	return 0;
}