#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_3__* hinfo_p ;
struct TYPE_9__ {TYPE_2__* out; TYPE_1__* in; } ;
struct TYPE_8__ {char* thisHook; } ;
struct TYPE_7__ {char* thisHook; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NETGRAPH_TAG ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ng_tag_default_in ; 
 int /*<<< orphan*/  ng_tag_default_out ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC6(node_p node, hook_p hook, const char *name)
{
	hinfo_p hip;
	int error;

	/* Create hook private structure. */
	hip = FUNC2(sizeof(*hip), M_NETGRAPH_TAG, M_NOWAIT | M_ZERO);
	if (hip == NULL)
		return (ENOMEM);
	FUNC0(hook, hip);

	/*
	 * After M_ZERO both in and out hook pointers are set to NULL,
	 * as well as all members and pointers to in and out API
	 * structures, so we need to set explicitly only thisHook field
	 * in that structures (after allocating them, of course).
	 */

	/* Attach the default IN data. */
	if ((error = FUNC3(hook, &ng_tag_default_in)) != 0) {
		FUNC1(hip, M_NETGRAPH_TAG);
		return (error);
	}

	/* Attach the default OUT data. */
	if ((error = FUNC4(hook, &ng_tag_default_out)) != 0) {
		FUNC1(hip, M_NETGRAPH_TAG);
		return (error);
	}

	/*
	 * Set hook name.  This is done only once at hook creation time
	 * since hook name can't change, rather than to do it on every
	 * response to messages requesting API structures with data who
	 * we are etc.
	 */
	FUNC5(hip->in->thisHook, name, sizeof(hip->in->thisHook) - 1);
	hip->in->thisHook[sizeof(hip->in->thisHook) - 1] = '\0';
	FUNC5(hip->out->thisHook, name, sizeof(hip->out->thisHook) - 1);
	hip->out->thisHook[sizeof(hip->out->thisHook) - 1] = '\0';
	return (0);
}