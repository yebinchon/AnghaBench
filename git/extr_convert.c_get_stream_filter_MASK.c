#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stream_filter {int dummy; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct conv_attrs {scalar_t__ crlf_action; scalar_t__ ident; scalar_t__ working_tree_encoding; TYPE_1__* drv; } ;
struct TYPE_2__ {scalar_t__ clean; scalar_t__ smudge; scalar_t__ process; } ;

/* Variables and functions */
 scalar_t__ CRLF_AUTO ; 
 scalar_t__ CRLF_AUTO_CRLF ; 
 scalar_t__ EOL_CRLF ; 
 struct stream_filter* FUNC0 (struct stream_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state const*,struct conv_attrs*,char const*) ; 
 struct stream_filter* FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  null_filter_singleton ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

struct stream_filter *FUNC5(const struct index_state *istate,
					const char *path,
					const struct object_id *oid)
{
	struct conv_attrs ca;
	struct stream_filter *filter = NULL;

	FUNC1(istate, &ca, path);
	if (ca.drv && (ca.drv->process || ca.drv->smudge || ca.drv->clean))
		return NULL;

	if (ca.working_tree_encoding)
		return NULL;

	if (ca.crlf_action == CRLF_AUTO || ca.crlf_action == CRLF_AUTO_CRLF)
		return NULL;

	if (ca.ident)
		filter = FUNC2(oid);

	if (FUNC4(ca.crlf_action) == EOL_CRLF)
		filter = FUNC0(filter, FUNC3());
	else
		filter = FUNC0(filter, &null_filter_singleton);

	return filter;
}