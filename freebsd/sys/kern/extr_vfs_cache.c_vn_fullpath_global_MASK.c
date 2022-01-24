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
struct vnode {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disablefullpath ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rootvnode ; 
 int FUNC3 (struct thread*,struct vnode*,int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, struct vnode *vn,
    char **retbuf, char **freebuf)
{
	char *buf;
	int error;

	if (FUNC0(disablefullpath))
		return (ENODEV);
	if (FUNC0(vn == NULL))
		return (EINVAL);
	buf = FUNC2(MAXPATHLEN, M_TEMP, M_WAITOK);
	error = FUNC3(td, vn, rootvnode, buf, retbuf, MAXPATHLEN);
	if (!error)
		*freebuf = buf;
	else
		FUNC1(buf, M_TEMP);
	return (error);
}