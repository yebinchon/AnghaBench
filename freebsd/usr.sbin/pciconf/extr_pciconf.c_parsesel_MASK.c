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
struct pcisel {unsigned long pc_func; unsigned long pc_dev; unsigned long pc_bus; unsigned long pc_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 char* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 unsigned long FUNC4 (char const*,char**,int) ; 

__attribute__((used)) static struct pcisel
FUNC5(const char *str)
{
	const char *ep;
	char *eppos;
	struct pcisel sel;
	unsigned long selarr[4];
	int i;

	ep = FUNC2(str, '@');
	if (ep != NULL)
		ep++;
	else
		ep = str;

	if (FUNC3(ep, "pci", 3) == 0) {
		ep += 3;
		i = 0;
		while (FUNC1(*ep) && i < 4) {
			selarr[i++] = FUNC4(ep, &eppos, 10);
			ep = eppos;
			if (*ep == ':')
				ep++;
		}
		if (i > 0 && *ep == '\0') {
			sel.pc_func = (i > 2) ? selarr[--i] : 0;
			sel.pc_dev = (i > 0) ? selarr[--i] : 0;
			sel.pc_bus = (i > 0) ? selarr[--i] : 0;
			sel.pc_domain = (i > 0) ? selarr[--i] : 0;
			return (sel);
		}
	}
	FUNC0(1, "cannot parse selector %s", str);
}