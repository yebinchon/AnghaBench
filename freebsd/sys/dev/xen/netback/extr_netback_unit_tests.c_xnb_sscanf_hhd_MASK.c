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
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char*,int*) ; 

__attribute__((used)) static void
FUNC2(char *buffer, size_t buflen)
{
	const char mystr[] = "-27";
	int8_t dest[12];
	int i;

	for (i = 0; i < 12; i++)
		dest[i] = 'X';

	FUNC0(FUNC1(mystr, "%hhd", &dest[4]) == 1);
	for (i = 0; i < 12; i++)
		FUNC0(dest[i] == (i == 4 ? -27 : 'X'));
}