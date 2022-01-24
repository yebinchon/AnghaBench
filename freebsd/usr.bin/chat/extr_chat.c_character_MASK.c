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
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,...) ; 

char *
FUNC1(int c)
{
    static char string[10];
    const char *meta;

    meta = (c & 0x80) ? "M-" : "";
    c &= 0x7F;

    if (c < 32)
	FUNC0(string, "%s^%c", meta, (int)c + '@');
    else if (c == 127)
	FUNC0(string, "%s^?", meta);
    else
	FUNC0(string, "%s%c", meta, c);

    return (string);
}