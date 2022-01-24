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
struct ipq {int /*<<< orphan*/ * ipq_label; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MPC_OBJECT_IPQ ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int mac_labeled ; 

int
FUNC1(struct ipq *q, int flag)
{

	if (mac_labeled & MPC_OBJECT_IPQ) {
		q->ipq_label = FUNC0(flag);
		if (q->ipq_label == NULL)
			return (ENOMEM);
	} else
		q->ipq_label = NULL;
	return (0);
}