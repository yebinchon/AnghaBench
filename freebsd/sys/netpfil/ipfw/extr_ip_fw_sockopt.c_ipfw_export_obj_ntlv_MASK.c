#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct named_object {int /*<<< orphan*/  name; int /*<<< orphan*/  kidx; int /*<<< orphan*/  etlv; } ;
struct TYPE_4__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  idx; TYPE_1__ head; } ;
typedef  TYPE_2__ ipfw_obj_ntlv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(struct named_object *no, ipfw_obj_ntlv *ntlv)
{

	ntlv->head.type = no->etlv;
	ntlv->head.length = sizeof(*ntlv);
	ntlv->idx = no->kidx;
	FUNC0(ntlv->name, no->name, sizeof(ntlv->name));
}