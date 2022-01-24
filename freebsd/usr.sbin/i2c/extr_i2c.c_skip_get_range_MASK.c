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
struct skip_range {void* end; void* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char**,char*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct skip_range
FUNC3(char *skip_addr)
{
	struct skip_range addr_range;
	char *token;

	addr_range.start = 0;
	addr_range.end = 0;

	token = FUNC1(&skip_addr, "..");
	if (token) {
		addr_range.start = FUNC2(token, 0, 16);
		token = FUNC1(&skip_addr, "..");
		if ((token != NULL) && !FUNC0(token)) {
			token = FUNC1(&skip_addr, "..");
			if (token)
				addr_range.end = FUNC2(token, 0, 16);
		}
	}

	return (addr_range);
}