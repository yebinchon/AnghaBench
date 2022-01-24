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
struct fixs {char* name; int len; } ;

/* Variables and functions */
 char** days ; 
 char** fdays ; 
 struct fixs* fndays ; 
 struct fixs* ndays ; 
 size_t FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC2(char *s, size_t *len, size_t *offset, const char **dow)
{
	struct fixs *n;
	int i;

	for (i = 0; fndays[i].name != NULL; i++) {
		n = fndays + i;
		if (FUNC1(s, n->name, n->len) == 0) {
			*len = n->len;
			*dow = n->name;
			*offset = i;
			return (1);
		}
	}
	for (i = 0; ndays[i].name != NULL; i++) {
		n = ndays + i;
		if (FUNC1(s, n->name, n->len) == 0) {
			*len = n->len;
			*dow = n->name;
			*offset = i;
			return (1);
		}
	}
	for (i = 0; fdays[i] != NULL; i++) {
		*len = FUNC0(fdays[i]);
		if (FUNC1(s, fdays[i], *len) == 0) {
			*dow = fdays[i];
			*offset = i;
			return (1);
		}
	}
	for (i = 0; days[i] != NULL; i++) {
		if (FUNC1(s, days[i], 3) == 0) {
			*len = 3;
			*dow = days[i];
			*offset = i;
			return (1);
		}
	}
	return (0);
}