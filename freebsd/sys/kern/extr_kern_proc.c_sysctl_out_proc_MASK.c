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
struct sysctl_req {int /*<<< orphan*/ * oldptr; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct kinfo_proc {int dummy; } ;
typedef  int /*<<< orphan*/  ki ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_INCLUDENUL ; 
 int FUNC0 (struct sysctl_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct proc*,struct sbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,int,struct sysctl_req*) ; 

__attribute__((used)) static int
FUNC7(struct proc *p, struct sysctl_req *req, int flags)
{
	struct sbuf sb;
	struct kinfo_proc ki;
	int error, error2;

	if (req->oldptr == NULL)
		return (FUNC0(req, 0, FUNC2(p, flags)));

	FUNC6(&sb, (char *)&ki, sizeof(ki), req);
	FUNC3(&sb, SBUF_INCLUDENUL);
	error = FUNC1(p, &sb, flags);
	error2 = FUNC5(&sb);
	FUNC4(&sb);
	if (error != 0)
		return (error);
	else if (error2 != 0)
		return (error2);
	return (0);
}