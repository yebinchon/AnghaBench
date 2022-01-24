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
 char* FUNC0 (char*,char) ; 
 long FUNC1 (char*,char**,int) ; 

__attribute__((used)) static char *FUNC2(char *host)
{
	char *end;
	char *p = FUNC0(host, ':');

	if (p) {
		long port = FUNC1(p + 1, &end, 10);
		if (end != p + 1 && *end == '\0' && 0 <= port && port < 65536) {
			*p = '\0';
			return p+1;
		}
	}

	return NULL;
}