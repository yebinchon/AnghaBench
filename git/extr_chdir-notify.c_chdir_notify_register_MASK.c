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
struct chdir_notify_entry {char const* name; int /*<<< orphan*/  list; void* data; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  chdir_notify_callback ;

/* Variables and functions */
 int /*<<< orphan*/  chdir_notify_entries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct chdir_notify_entry* FUNC1 (int) ; 

void FUNC2(const char *name,
			   chdir_notify_callback cb,
			   void *data)
{
	struct chdir_notify_entry *e = FUNC1(sizeof(*e));
	e->name = name;
	e->cb = cb;
	e->data = data;
	FUNC0(&e->list, &chdir_notify_entries);
}