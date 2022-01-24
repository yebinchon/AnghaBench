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
struct counters {char const* counter_name; struct counters* next_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static struct counters *
FUNC4(struct counters *base, const char *name)
{
	struct counters *at;
	int len;

	at = base;
	len = FUNC2(name);
	while(at) {
		if (FUNC3(at->counter_name, name, len) == 0) {
			return(at);
		}
		at = at->next_cpu;
	}
	FUNC1("Can't find counter %s\n", name);
	FUNC1("We have:\n");
	at = base;
	while(at) {
		FUNC1("- %s\n", at->counter_name);
		at = at->next_cpu;
	}
	FUNC0(-1);
}