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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  HN_DECIMAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,long,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,long) ; 

__attribute__((used)) static const char *
FUNC2(long value, bool humanize, int scale)
{
	static char buffer[14];

	if (scale != 0)
		value <<= scale * 10;
	if (humanize)
		FUNC0(buffer, sizeof(buffer), value, "B",
		    scale, HN_DECIMAL);
	else
		FUNC1(buffer, sizeof(buffer), "%ld   ", value);
	return (buffer);
}