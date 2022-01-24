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
struct remote {int dummy; } ;
struct branch {int dummy; } ;

/* Variables and functions */
#define  PUSH_DEFAULT_CURRENT 133 
#define  PUSH_DEFAULT_MATCHING 132 
#define  PUSH_DEFAULT_NOTHING 131 
#define  PUSH_DEFAULT_SIMPLE 130 
#define  PUSH_DEFAULT_UNSPECIFIED 129 
#define  PUSH_DEFAULT_UPSTREAM 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct branch* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct remote*) ; 
 int push_default ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  rs ; 
 int /*<<< orphan*/  FUNC5 (struct remote*,struct branch*) ; 
 int /*<<< orphan*/  FUNC6 (struct remote*,struct branch*,int,int) ; 

__attribute__((used)) static void FUNC7(struct remote *remote)
{
	struct branch *branch = FUNC1(NULL);
	int triangular = FUNC3(remote);

	switch (push_default) {
	default:
	case PUSH_DEFAULT_MATCHING:
		FUNC4(&rs, ":");
		break;

	case PUSH_DEFAULT_UNSPECIFIED:
	case PUSH_DEFAULT_SIMPLE:
		if (triangular)
			FUNC5(remote, branch);
		else
			FUNC6(remote, branch, triangular, 1);
		break;

	case PUSH_DEFAULT_UPSTREAM:
		FUNC6(remote, branch, triangular, 0);
		break;

	case PUSH_DEFAULT_CURRENT:
		FUNC5(remote, branch);
		break;

	case PUSH_DEFAULT_NOTHING:
		FUNC2(FUNC0("You didn't specify any refspecs to push, and "
		    "push.default is \"nothing\"."));
		break;
	}
}