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
struct consdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC1(struct consdev *cp, int c)
{
	char cbuf;

	if (c == '\n') {
		cbuf = '\r';
		FUNC0(stdout, &cbuf, 1);
	}

	cbuf = c;
	FUNC0(stdout, &cbuf, 1);
}