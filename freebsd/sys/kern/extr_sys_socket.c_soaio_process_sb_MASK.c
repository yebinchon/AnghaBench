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
struct socket {int /*<<< orphan*/  so_vnet; } ;
struct sockbuf {int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  sb_aiojobq; } ;
struct kaiocb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_AIO ; 
 int /*<<< orphan*/  SB_AIO_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct kaiocb* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kaiocb*) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,struct sockbuf*,struct kaiocb*) ; 
 scalar_t__ FUNC10 (struct socket*,struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 

__attribute__((used)) static void
FUNC12(struct socket *so, struct sockbuf *sb)
{
	struct kaiocb *job;

	FUNC1(so->so_vnet);
	FUNC2(sb);
	while (!FUNC5(&sb->sb_aiojobq) && FUNC10(so, sb)) {
		job = FUNC6(&sb->sb_aiojobq);
		FUNC7(&sb->sb_aiojobq, job, list);
		if (!FUNC8(job))
			continue;

		FUNC9(so, sb, job);
	}

	/*
	 * If there are still pending requests, the socket must not be
	 * ready so set SB_AIO to request a wakeup when the socket
	 * becomes ready.
	 */
	if (!FUNC5(&sb->sb_aiojobq))
		sb->sb_flags |= SB_AIO;
	sb->sb_flags &= ~SB_AIO_RUNNING;
	FUNC3(sb);

	FUNC4(so);
	FUNC11(so);
	FUNC0();
}