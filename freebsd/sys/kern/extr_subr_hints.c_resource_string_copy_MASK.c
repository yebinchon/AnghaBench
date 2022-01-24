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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static const char *
FUNC2(const char *s, int len)
{
	static char stringbuf[256];
	static int offset = 0;
	const char *ret;

	if (len == 0)
		len = FUNC1(s);
	if (len > 255)
		return NULL;
	if ((offset + len + 1) > 255)
		offset = 0;
	FUNC0(s, &stringbuf[offset], len);
	stringbuf[offset + len] = '\0';
	ret = &stringbuf[offset];
	offset += len + 1;
	return ret;
}