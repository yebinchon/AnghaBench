#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct TYPE_7__ {TYPE_1__ m_pkthdr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * activeLinks; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  PROT_IP ; 
 int FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(hook_p hook, item_p item)
{
	const node_p node = FUNC1(hook);
	const priv_p priv = FUNC2(node);

	return (FUNC3(node, item, PROT_IP, priv->activeLinks[0],
	    FUNC0(item)->m_pkthdr.len));
}