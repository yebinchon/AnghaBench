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
 scalar_t__ ERASE ; 
 scalar_t__ OFF ; 
 scalar_t__ ON ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ header_status ; 
 int /*<<< orphan*/  lastline ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC3 (char const*) ; 

void
FUNC4(const char *text)
{
    char *s;

    s = FUNC3(text);
    if (s != NULL)
	text = s;

    if (header_status == ON)
    {
	FUNC2('\n');
	FUNC0(text, stdout);
	lastline++;
    }
    else if (header_status == ERASE)
    {
	header_status = OFF;
    }
    FUNC1(s);
}