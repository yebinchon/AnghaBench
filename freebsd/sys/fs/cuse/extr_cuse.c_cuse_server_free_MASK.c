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
struct cuse_server {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cuse_server*) ; 
 int /*<<< orphan*/  FUNC1 (struct cuse_server*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct cuse_server *pcs = arg;

	/*
	 * The final server unref should be done by the server thread
	 * to prevent deadlock in the client cdevpriv destructor,
	 * which cannot destroy itself.
	 */
	while (FUNC0(pcs) != 1)
		FUNC2("W", hz);

	/* drop final refcount */
	FUNC1(pcs);
}