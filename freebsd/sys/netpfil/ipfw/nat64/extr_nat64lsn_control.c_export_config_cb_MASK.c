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
struct nat64lsn_cfg {int dummy; } ;
struct nat64_dump_arg {int /*<<< orphan*/  ch; int /*<<< orphan*/  sd; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct _ipfw_nat64lsn_cfg {int dummy; } ;
typedef  struct _ipfw_nat64lsn_cfg ipfw_nat64lsn_cfg ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nat64lsn_cfg*,struct _ipfw_nat64lsn_cfg*) ; 

__attribute__((used)) static int
FUNC2(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
	struct nat64_dump_arg *da = (struct nat64_dump_arg *)arg;
	ipfw_nat64lsn_cfg *uc;

	uc = (struct _ipfw_nat64lsn_cfg *)FUNC0(da->sd,
	    sizeof(*uc));
	FUNC1(da->ch, (struct nat64lsn_cfg *)no, uc);
	return (0);
}