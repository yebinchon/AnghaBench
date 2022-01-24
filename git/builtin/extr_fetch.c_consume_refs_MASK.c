#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct transport {TYPE_2__* remote; int /*<<< orphan*/  url; TYPE_1__* smart_options; } ;
struct ref {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int connectivity_checked; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ref*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct transport*) ; 

__attribute__((used)) static int FUNC4(struct transport *transport, struct ref *ref_map)
{
	int connectivity_checked = transport->smart_options
		? transport->smart_options->connectivity_checked : 0;
	int ret;
	FUNC1("fetch", "consume_refs", the_repository);
	ret = FUNC0(transport->url,
				 transport->remote->name,
				 connectivity_checked,
				 ref_map);
	FUNC3(transport);
	FUNC2("fetch", "consume_refs", the_repository);
	return ret;
}