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
 int MAXSUBUNITS ; 
 char* NULLUNIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int 
FUNC2(char *product[], char *toadd)
{
	char **ptr;

	for (ptr = product; *ptr && *ptr != NULLUNIT; ptr++);
	if (ptr >= product + MAXSUBUNITS) {
		FUNC1("memory overflow in unit reduction");
		return 1;
	}
	if (!*ptr)
		*(ptr + 1) = NULL;
	*ptr = FUNC0(toadd);
	return 0;
}