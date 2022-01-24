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
struct protoent {char* p_name; int p_proto; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 struct protoent* FUNC1 (char const*) ; 
 struct protoent* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(char const *arg, int brief)
{
	struct protoent	*pe = NULL;
	int		 proto;

	if ((proto = FUNC0(arg)) != 0)
		pe = FUNC2(proto);
	else
		pe = FUNC1(arg);

	if (pe == NULL) {
		FUNC3(stderr, "%s: Unknown Protocol/Service Multiplexor\n", arg);
		return (1);
	}

	if (brief) {
		if (proto)
			FUNC4("%s", pe->p_name);
		else
			FUNC4("%d", pe->p_proto);
	} else {
		FUNC4("Protocol/Service Multiplexor %s has number %d\n",
			pe->p_name, pe->p_proto);
	}

	return (0);
}