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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  _rpcpmstart ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const char *fmt, va_list ap)
{
	if (debug && !_rpcpmstart) {
		FUNC0(stderr,"%s: ",progname);
		FUNC1(stderr, fmt, ap);
		FUNC0(stderr, "\n");
	} else {
		FUNC2(LOG_NOTICE, fmt, ap);
	}
}