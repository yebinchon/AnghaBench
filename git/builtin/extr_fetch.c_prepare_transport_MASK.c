#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct transport {scalar_t__ smart_options; int /*<<< orphan*/  family; } ;
struct remote {int dummy; } ;
struct TYPE_7__ {scalar_t__ nr; } ;
struct TYPE_6__ {scalar_t__ choice; } ;
struct TYPE_5__ {scalar_t__ nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRANS_OPT_DEEPEN_NOT ; 
 int /*<<< orphan*/  TRANS_OPT_DEEPEN_RELATIVE ; 
 int /*<<< orphan*/  TRANS_OPT_DEEPEN_SINCE ; 
 int /*<<< orphan*/  TRANS_OPT_DEPTH ; 
 int /*<<< orphan*/  TRANS_OPT_FROM_PROMISOR ; 
 int /*<<< orphan*/  TRANS_OPT_KEEP ; 
 int /*<<< orphan*/  TRANS_OPT_LIST_OBJECTS_FILTER ; 
 int /*<<< orphan*/  TRANS_OPT_UPDATE_SHALLOW ; 
 int /*<<< orphan*/  TRANS_OPT_UPLOADPACK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_4__ deepen_not ; 
 scalar_t__ deepen_relative ; 
 char* deepen_since ; 
 char* depth ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  family ; 
 TYPE_2__ filter_options ; 
 scalar_t__ keep ; 
 TYPE_1__ negotiation_tip ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  FUNC2 (struct transport*,int /*<<< orphan*/ ,char const*) ; 
 struct transport* FUNC3 (struct remote*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct transport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ update_shallow ; 
 char* upload_pack ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct transport *FUNC6(struct remote *remote, int deepen)
{
	struct transport *transport;

	transport = FUNC3(remote, NULL);
	FUNC4(transport, verbosity, progress);
	transport->family = family;
	if (upload_pack)
		FUNC2(transport, TRANS_OPT_UPLOADPACK, upload_pack);
	if (keep)
		FUNC2(transport, TRANS_OPT_KEEP, "yes");
	if (depth)
		FUNC2(transport, TRANS_OPT_DEPTH, depth);
	if (deepen && deepen_since)
		FUNC2(transport, TRANS_OPT_DEEPEN_SINCE, deepen_since);
	if (deepen && deepen_not.nr)
		FUNC2(transport, TRANS_OPT_DEEPEN_NOT,
			   (const char *)&deepen_not);
	if (deepen_relative)
		FUNC2(transport, TRANS_OPT_DEEPEN_RELATIVE, "yes");
	if (update_shallow)
		FUNC2(transport, TRANS_OPT_UPDATE_SHALLOW, "yes");
	if (filter_options.choice) {
		const char *spec =
			FUNC1(&filter_options);
		FUNC2(transport, TRANS_OPT_LIST_OBJECTS_FILTER, spec);
		FUNC2(transport, TRANS_OPT_FROM_PROMISOR, "1");
	}
	if (negotiation_tip.nr) {
		if (transport->smart_options)
			FUNC0(transport->smart_options);
		else
			FUNC5("Ignoring --negotiation-tip because the protocol does not support it.");
	}
	return transport;
}