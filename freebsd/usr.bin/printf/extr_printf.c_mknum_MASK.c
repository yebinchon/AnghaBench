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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5(char *str, char ch)
{
	static char *copy;
	static size_t copy_size;
	char *newcopy;
	size_t len, newlen;

	len = FUNC3(str) + 2;
	if (len > copy_size) {
		newlen = ((len + 1023) >> 10) << 10;
		if ((newcopy = FUNC1(copy, newlen)) == NULL) {
			FUNC4("%s", FUNC2(ENOMEM));
			return (NULL);
		}
		copy = newcopy;
		copy_size = newlen;
	}

	FUNC0(copy, str, len - 3);
	copy[len - 3] = 'j';
	copy[len - 2] = ch;
	copy[len - 1] = '\0';
	return (copy);
}