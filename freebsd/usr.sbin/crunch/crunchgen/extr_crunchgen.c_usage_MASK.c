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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(void)
{
	FUNC1(stderr, "%s%s\n\t%s%s\n", "usage: crunchgen [-foq] ",
	    "[-h <makefile-header-name>] [-m <makefile>]",
	    "[-p <obj-prefix>] [-c <c-file-name>] [-e <exec-file>] ",
	    "<conffile>");
	FUNC0(1);
}