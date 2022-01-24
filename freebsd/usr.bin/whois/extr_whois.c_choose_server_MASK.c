#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* suffix; char const* server; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 
 TYPE_1__* whoiswhere ; 

__attribute__((used)) static const char *
FUNC3(char *domain)
{
	size_t len = FUNC2(domain);
	int i;

	for (i = 0; whoiswhere[i].suffix != NULL; i++) {
		size_t suffix_len = FUNC2(whoiswhere[i].suffix);
		if (len > suffix_len &&
		    FUNC1(domain + len - suffix_len,
			       whoiswhere[i].suffix) == 0)
			return (whoiswhere[i].server);
	}
	FUNC0(EX_SOFTWARE, "no default whois server");
}