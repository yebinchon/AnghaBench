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
struct cm_id_private {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_1__ cm ; 
 struct cm_id_private* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cm_id_private * FUNC3(__be32 local_id, __be32 remote_id)
{
	struct cm_id_private *cm_id_priv;

	FUNC1(&cm.lock);
	cm_id_priv = FUNC0(local_id, remote_id);
	FUNC2(&cm.lock);

	return cm_id_priv;
}