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
struct string_list {int dummy; } ;
struct remote {int /*<<< orphan*/  name; int /*<<< orphan*/  skip_default_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct remote *remote, void *priv)
{
	struct string_list *list = priv;
	if (!remote->skip_default_update)
		FUNC0(list, remote->name);
	return 0;
}