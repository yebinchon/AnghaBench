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
typedef  int /*<<< orphan*/  hex ;

/* Variables and functions */
 char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

char *
FUNC3(char *p, size_t len)
{
	char	 hex[3];
	char	*buffer;
	size_t	 i, j;

	if ((buffer = FUNC0(1, len + 1)) == NULL)
		return NULL;

	for (i = j = 0; j < len; i++) {
		if (p[j] == '\\') {
			FUNC1(hex, p + j + 1, sizeof(hex));
			buffer[i] = (char)FUNC2(hex, NULL, 16);
			j += 3;
		} else {
			buffer[i] = p[j];
			j++;
		}
	}

	return buffer;
}