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
 int FUNC0 (void*,char const**,size_t*,char**,size_t*,int /*<<< orphan*/ ,int) ; 

int
FUNC1(void *handle, const char **inbuf,
	size_t *inbytesleft, char **outbuf, size_t *outbytesleft, int casetype)
{
	return FUNC0(handle, inbuf, inbytesleft, outbuf, outbytesleft, 0, casetype);
}