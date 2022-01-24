#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct socket {TYPE_1__* so_cred; } ;
struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_lowat; int /*<<< orphan*/  sb_mbmax; } ;
typedef  int /*<<< orphan*/  rlim_t ;
struct TYPE_2__ {int /*<<< orphan*/  cr_uidinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_SBSIZE ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int sb_efficiency ; 
 int /*<<< orphan*/  sb_max ; 
 int sb_max_adj ; 

int
FUNC4(struct sockbuf *sb, u_long cc, struct socket *so,
    struct thread *td)
{
	rlim_t sbsize_limit;

	FUNC0(sb);

	/*
	 * When a thread is passed, we take into account the thread's socket
	 * buffer size limit.  The caller will generally pass curthread, but
	 * in the TCP input path, NULL will be passed to indicate that no
	 * appropriate thread resource limits are available.  In that case,
	 * we don't apply a process limit.
	 */
	if (cc > sb_max_adj)
		return (0);
	if (td != NULL) {
		sbsize_limit = FUNC2(td, RLIMIT_SBSIZE);
	} else
		sbsize_limit = RLIM_INFINITY;
	if (!FUNC1(so->so_cred->cr_uidinfo, &sb->sb_hiwat, cc,
	    sbsize_limit))
		return (0);
	sb->sb_mbmax = FUNC3(cc * sb_efficiency, sb_max);
	if (sb->sb_lowat > sb->sb_hiwat)
		sb->sb_lowat = sb->sb_hiwat;
	return (1);
}