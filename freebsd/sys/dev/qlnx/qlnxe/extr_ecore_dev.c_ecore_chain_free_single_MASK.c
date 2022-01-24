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
struct ecore_dev {int dummy; } ;
struct ecore_chain {int /*<<< orphan*/  p_phys_addr; int /*<<< orphan*/  p_virt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_CHAIN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ecore_dev *p_dev,
				    struct ecore_chain *p_chain)
{
	if (!p_chain->p_virt_addr)
		return;

	FUNC0(p_dev, p_chain->p_virt_addr,
			       p_chain->p_phys_addr, ECORE_CHAIN_PAGE_SIZE);
}