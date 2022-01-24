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
struct pf_tagname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_QUEUE_TAG_HASH_SIZE_DEFAULT ; 
 int /*<<< orphan*/  PF_RULE_TAG_HASH_SIZE_DEFAULT ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  V_pf_qids ; 
 int /*<<< orphan*/  V_pf_tag_z ; 
 int /*<<< orphan*/  V_pf_tags ; 
 int V_pf_vnet_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_queue_tag_hashsize ; 
 int /*<<< orphan*/  pf_rule_tag_hashsize ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	V_pf_tag_z = FUNC2("pf tags", sizeof(struct pf_tagname),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);

	FUNC0(&V_pf_tags, &pf_rule_tag_hashsize,
	    PF_RULE_TAG_HASH_SIZE_DEFAULT);
#ifdef ALTQ
	pf_init_tagset(&V_pf_qids, &pf_queue_tag_hashsize,
	    PF_QUEUE_TAG_HASH_SIZE_DEFAULT);
#endif

	FUNC1();
	V_pf_vnet_active = 1;
}