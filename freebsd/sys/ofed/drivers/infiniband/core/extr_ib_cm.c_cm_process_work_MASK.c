#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cm_work {int /*<<< orphan*/  cm_event; } ;
struct TYPE_4__ {int (* cm_handler ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct cm_id_private {TYPE_1__ id; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct cm_work* FUNC2 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_work*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct cm_id_private *cm_id_priv,
			    struct cm_work *work)
{
	int ret;

	/* We will typically only have the current event to report. */
	ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, &work->cm_event);
	FUNC5(work);

	while (!ret && !FUNC1(-1, &cm_id_priv->work_count)) {
		FUNC6(&cm_id_priv->lock);
		work = FUNC2(cm_id_priv);
		FUNC7(&cm_id_priv->lock);
		FUNC0(!work);
		ret = cm_id_priv->id.cm_handler(&cm_id_priv->id,
						&work->cm_event);
		FUNC5(work);
	}
	FUNC3(cm_id_priv);
	if (ret)
		FUNC4(&cm_id_priv->id, ret);
}