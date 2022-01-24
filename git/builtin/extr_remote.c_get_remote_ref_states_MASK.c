#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct transport {int dummy; } ;
struct ref_states {int queried; int /*<<< orphan*/  tracked; TYPE_1__* remote; } ;
struct ref {int dummy; } ;
struct TYPE_3__ {scalar_t__ url_nr; int /*<<< orphan*/ ** url; } ;

/* Variables and functions */
 int GET_HEAD_NAMES ; 
 int GET_PUSH_REF_STATES ; 
 int GET_REF_STATES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  append_ref_to_tracked_list ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ref_states*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref const*,struct ref_states*) ; 
 int /*<<< orphan*/  FUNC4 (struct ref const*,struct ref_states*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_states*) ; 
 int /*<<< orphan*/  FUNC6 (struct ref const*,struct ref_states*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct transport*) ; 
 struct transport* FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct ref* FUNC12 (struct transport*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(const char *name,
				 struct ref_states *states,
				 int query)
{
	struct transport *transport;
	const struct ref *remote_refs;

	states->remote = FUNC8(name);
	if (!states->remote)
		return FUNC1(FUNC0("No such remote: '%s'"), name);

	FUNC7();

	if (query) {
		transport = FUNC11(states->remote, states->remote->url_nr > 0 ?
			states->remote->url[0] : NULL);
		remote_refs = FUNC12(transport, NULL);
		FUNC10(transport);

		states->queried = 1;
		if (query & GET_REF_STATES)
			FUNC6(remote_refs, states);
		if (query & GET_HEAD_NAMES)
			FUNC3(remote_refs, states);
		if (query & GET_PUSH_REF_STATES)
			FUNC4(remote_refs, states);
	} else {
		FUNC2(append_ref_to_tracked_list, states);
		FUNC9(&states->tracked);
		FUNC5(states);
	}

	return 0;
}