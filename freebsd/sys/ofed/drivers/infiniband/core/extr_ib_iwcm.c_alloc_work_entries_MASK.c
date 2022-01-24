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
struct iwcm_work {int /*<<< orphan*/  list; struct iwcm_id_private* cm_id; } ;
struct iwcm_id_private {int /*<<< orphan*/  work_free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwcm_id_private*) ; 
 struct iwcm_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iwcm_work*) ; 

__attribute__((used)) static int FUNC6(struct iwcm_id_private *cm_id_priv, int count)
{
	struct iwcm_work *work;

	FUNC0(!FUNC4(&cm_id_priv->work_free_list));
	while (count--) {
		work = FUNC3(sizeof(struct iwcm_work), GFP_KERNEL);
		if (!work) {
			FUNC2(cm_id_priv);
			return -ENOMEM;
		}
		work->cm_id = cm_id_priv;
		FUNC1(&work->list);
		FUNC5(work);
	}
	return 0;
}