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
 int FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,char const*) ; 

void
FUNC2(const char *element, char* buf, int mode)
{
	FUNC1("<%s>%i</%s>\n", element,
	    FUNC0((unsigned char *)buf, mode), element);
}