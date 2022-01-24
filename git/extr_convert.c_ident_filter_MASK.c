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
struct TYPE_2__ {int /*<<< orphan*/ * vtbl; } ;
struct ident_filter {scalar_t__ state; TYPE_1__ filter; int /*<<< orphan*/  left; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  ident_vtbl ; 
 int /*<<< orphan*/  FUNC0 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ident_filter* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct stream_filter *FUNC4(const struct object_id *oid)
{
	struct ident_filter *ident = FUNC2(sizeof(*ident));

	FUNC3(ident->ident, sizeof(ident->ident),
		  ": %s $", FUNC0(oid));
	FUNC1(&ident->left, 0);
	ident->filter.vtbl = &ident_vtbl;
	ident->state = 0;
	return (struct stream_filter *)ident;
}