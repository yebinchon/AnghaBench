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
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct ifentry {int /*<<< orphan*/  ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPFW_TBL ; 
 int /*<<< orphan*/  FUNC0 (struct ifentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct namedobj_instance *ii, struct named_object *no,
    void *arg)
{
	struct ifentry *ife;
	struct ip_fw_chain *ch;

	ch = (struct ip_fw_chain *)arg;
	ife = (struct ifentry *)no;

	FUNC1(ch, &ife->ic);
	FUNC2(ch, &ife->ic);
	FUNC0(ife, M_IPFW_TBL);
	return (0);
}