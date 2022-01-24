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
 scalar_t__ ERANGE ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 unsigned long FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC3(const char *word, unsigned long *result)
{
	unsigned long	num;
	char		*ep;

	FUNC0(word != NULL);
	FUNC0(result != NULL);

	if (!FUNC1((unsigned char)word[0]))
		return 0;
	errno = 0;
	num = FUNC2(word, &ep, 10);
	if (num == ULONG_MAX && errno == ERANGE)
		return 0;
	if (*ep != '\0')
		return 0;
	*result = num;
	return 1;
}