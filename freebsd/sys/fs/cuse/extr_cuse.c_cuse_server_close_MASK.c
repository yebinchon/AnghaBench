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
struct thread {int dummy; } ;
struct cuse_server {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cuse_server*) ; 
 scalar_t__ FUNC1 (struct cuse_server**) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
	struct cuse_server *pcs;

	if (FUNC1(&pcs) == 0)
		FUNC0(pcs);

	return (0);
}