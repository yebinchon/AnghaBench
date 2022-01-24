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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static FILE *
FUNC3(const char *a[], const char *b[], const char *c[], const char *d[], char **name)
{
	FILE *f;
	int i, j, k, l;

	for (i = 0; a[i] != NULL; i++) {
		for (j = 0; b[j] != NULL; j++) {
			for (k = 0; c[k] != NULL; k++) {
				for (l = 0; d[l] != NULL; l++) {
					FUNC0(name, "%s%s%s%s",
						 a[i], b[j], c[k], d[l]);

					f = FUNC1(*name, "r");

					if (f != NULL)
						return (f);

					FUNC2(*name);
				}
			}
		}
	}
	return (NULL);
}