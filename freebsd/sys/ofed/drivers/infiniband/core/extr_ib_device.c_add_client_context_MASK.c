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
struct ib_device {int /*<<< orphan*/  client_data_lock; int /*<<< orphan*/  client_data_list; int /*<<< orphan*/  name; } ;
struct ib_client_data {int going_down; int /*<<< orphan*/  list; int /*<<< orphan*/ * data; struct ib_client* client; } ;
struct ib_client {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ib_client_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lists_rwsem ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ib_device *device, struct ib_client *client)
{
	struct ib_client_data *context;
	unsigned long flags;

	context = FUNC1(sizeof *context, GFP_KERNEL);
	if (!context) {
		FUNC3("Couldn't allocate client context for %s/%s\n",
			device->name, client->name);
		return -ENOMEM;
	}

	context->client = client;
	context->data   = NULL;
	context->going_down = false;

	FUNC0(&lists_rwsem);
	FUNC4(&device->client_data_lock, flags);
	FUNC2(&context->list, &device->client_data_list);
	FUNC5(&device->client_data_lock, flags);
	FUNC6(&lists_rwsem);

	return 0;
}