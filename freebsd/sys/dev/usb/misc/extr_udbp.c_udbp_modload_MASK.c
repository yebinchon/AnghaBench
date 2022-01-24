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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 char* NG_UDBP_NODE_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ng_udbp_typestruct ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(module_t mod, int event, void *data)
{
	int error;

	switch (event) {
	case MOD_LOAD:
		error = FUNC0(&ng_udbp_typestruct);
		if (error != 0) {
			FUNC2("%s: Could not register "
			    "Netgraph node type, error=%d\n",
			    NG_UDBP_NODE_TYPE, error);
		}
		break;

	case MOD_UNLOAD:
		error = FUNC1(&ng_udbp_typestruct);
		break;

	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}