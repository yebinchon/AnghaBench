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
struct table_info {int dummy; } ;
struct table_config {int dummy; } ;
struct table_algo {int /*<<< orphan*/  (* foreach ) (void*,struct table_info*,int /*<<< orphan*/ ,struct flush_args*) ;} ;
struct ip_fw_chain {int dummy; } ;
struct flush_args {struct table_info* ti; void* astate; struct table_algo* ta; struct ip_fw_chain* ch; } ;
typedef  int /*<<< orphan*/  fa ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct flush_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct table_info*,int /*<<< orphan*/ ,struct flush_args*) ; 
 int /*<<< orphan*/  unref_table_value_cb ; 

void
FUNC3(struct ip_fw_chain *ch, struct table_config *tc,
    struct table_algo *ta, void *astate, struct table_info *ti)
{
	struct flush_args fa;

	FUNC0(ch);

	FUNC1(&fa, 0, sizeof(fa));
	fa.ch = ch;
	fa.ta = ta;
	fa.astate = astate;
	fa.ti = ti;

	ta->foreach(astate, ti, unref_table_value_cb, &fa);
}