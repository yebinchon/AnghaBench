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
struct nm_bridge {void* private_data; } ;
typedef  void* (* bdg_update_private_data_fn_t ) (void*,void*,int*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct nm_bridge*) ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nm_bridge*,void*) ; 
 struct nm_bridge* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(const char *name, bdg_update_private_data_fn_t callback,
	void *callback_data, void *auth_token)
{
	void *private_data = NULL;
	struct nm_bridge *b;
	int error = 0;

	FUNC2();
	b = FUNC5(name, 0 /* don't create */, NULL);
	if (!b) {
		error = EINVAL;
		goto unlock_update_priv;
	}
	if (!FUNC4(b, auth_token)) {
		error = EACCES;
		goto unlock_update_priv;
	}
	FUNC0(b);
	private_data = callback(b->private_data, callback_data, &error);
	b->private_data = private_data;
	FUNC1(b);

unlock_update_priv:
	FUNC3();
	return error;
}