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
struct transport {int /*<<< orphan*/  url; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct transport*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct transport *transport, const char *name, const char *value)
{
	int r = FUNC2(transport, name, value);
	if (r < 0)
		FUNC1(FUNC0("Option \"%s\" value \"%s\" is not valid for %s"),
		    name, value, transport->url);
	if (r > 0)
		FUNC3(FUNC0("Option \"%s\" is ignored for %s\n"),
			name, transport->url);
}