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
typedef  int u_int ;
typedef  char u_char ;

/* Variables and functions */
 char* FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char **list, char **end)
{
	void *mod;
	u_char *ptr;
	u_int len;

	mod = NULL;
	ptr = NULL;

	mod = FUNC2("ram_blacklist");
	if (mod != NULL) {
		ptr = FUNC0(mod);
		len = FUNC1(mod);
        }
	*list = ptr;
	if (ptr != NULL)
		*end = ptr + len;
	else
		*end = NULL;
	return;
}