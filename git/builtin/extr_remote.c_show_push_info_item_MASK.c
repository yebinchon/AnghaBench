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
struct string_list_item {char* string; struct push_info* util; } ;
struct show_info {int /*<<< orphan*/  width; int /*<<< orphan*/  width2; } ;
struct push_info {int status; int /*<<< orphan*/  dest; scalar_t__ forced; } ;

/* Variables and functions */
#define  PUSH_STATUS_CREATE 133 
#define  PUSH_STATUS_DELETE 132 
#define  PUSH_STATUS_FASTFORWARD 131 
#define  PUSH_STATUS_NOTQUERIED 130 
#define  PUSH_STATUS_OUTOFDATE 129 
#define  PUSH_STATUS_UPTODATE 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC2(struct string_list_item *item, void *cb_data)
{
	struct show_info *show_info = cb_data;
	struct push_info *push_info = item->util;
	const char *src = item->string, *status = NULL;

	switch (push_info->status) {
	case PUSH_STATUS_CREATE:
		status = FUNC0("create");
		break;
	case PUSH_STATUS_DELETE:
		status = FUNC0("delete");
		src = FUNC0("(none)");
		break;
	case PUSH_STATUS_UPTODATE:
		status = FUNC0("up to date");
		break;
	case PUSH_STATUS_FASTFORWARD:
		status = FUNC0("fast-forwardable");
		break;
	case PUSH_STATUS_OUTOFDATE:
		status = FUNC0("local out of date");
		break;
	case PUSH_STATUS_NOTQUERIED:
		break;
	}
	if (status) {
		if (push_info->forced)
			FUNC1(FUNC0("    %-*s forces to %-*s (%s)"), show_info->width, src,
			       show_info->width2, push_info->dest, status);
		else
			FUNC1(FUNC0("    %-*s pushes to %-*s (%s)"), show_info->width, src,
			       show_info->width2, push_info->dest, status);
	} else {
		if (push_info->forced)
			FUNC1(FUNC0("    %-*s forces to %s"), show_info->width, src,
			       push_info->dest);
		else
			FUNC1(FUNC0("    %-*s pushes to %s"), show_info->width, src,
			       push_info->dest);
	}
	return 0;
}