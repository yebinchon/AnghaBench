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
typedef  int uint32_t ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct in_addr*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char) ; 
 unsigned int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(const char *s, uint32_t *addr, uint32_t *mask)
{
	char *p, *slash;
	struct in_addr ia;

	*mask = 0xffffffffU;
	slash = FUNC2(s, '/');
	if (slash)
		*slash = 0;
	if (!FUNC0(s, &ia)) {
		if (slash)
			*slash = '/';
		*addr = 0;
		return -1;
	}
	*addr = FUNC1(ia.s_addr);
	if (slash) {
		unsigned int prefix = FUNC3(slash + 1, &p, 10);

		*slash = '/';
		if (p == slash + 1 || *p || prefix > 32)
			return -1;
		*mask <<= (32 - prefix);
	}
	return 0;
}