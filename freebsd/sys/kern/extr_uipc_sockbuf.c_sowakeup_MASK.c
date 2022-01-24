#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockbuf {int sb_flags; int (* sb_upcall ) (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sb_upcallarg; TYPE_1__* sb_sel; int /*<<< orphan*/  sb_acc; } ;
struct socket {int so_state; int /*<<< orphan*/ * so_sigio; struct sockbuf so_rcv; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PSOCK ; 
 int SB_AIO ; 
 int SB_SEL ; 
 int SB_WAIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockbuf*) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int SS_ASYNC ; 
 int SU_ISCONNECTED ; 
 int SU_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,struct sockbuf*) ; 
 int FUNC12 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void
FUNC14(struct socket *so, struct sockbuf *sb)
{
	int ret;

	FUNC3(sb);

	FUNC8(sb->sb_sel, PSOCK);
	if (!FUNC2(sb->sb_sel))
		sb->sb_flags &= ~SB_SEL;
	if (sb->sb_flags & SB_WAIT) {
		sb->sb_flags &= ~SB_WAIT;
		FUNC13(&sb->sb_acc);
	}
	FUNC1(&sb->sb_sel->si_note, 0);
	if (sb->sb_upcall != NULL) {
		ret = sb->sb_upcall(so, sb->sb_upcallarg, M_NOWAIT);
		if (ret == SU_ISCONNECTED) {
			FUNC0(sb == &so->so_rcv,
			    ("SO_SND upcall returned SU_ISCONNECTED"));
			FUNC10(so, SO_RCV);
		}
	} else
		ret = SU_OK;
	if (sb->sb_flags & SB_AIO)
		FUNC11(so, sb);
	FUNC5(sb);
	if (ret == SU_ISCONNECTED)
		FUNC9(so);
	if ((so->so_state & SS_ASYNC) && so->so_sigio != NULL)
		FUNC7(&so->so_sigio, SIGIO, 0);
	FUNC6(FUNC4(sb), MA_NOTOWNED);
}