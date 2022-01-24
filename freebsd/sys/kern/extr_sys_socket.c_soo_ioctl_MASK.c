#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_10__ {int sb_state; int /*<<< orphan*/  sb_mbcnt; int /*<<< orphan*/  sb_mbmax; int /*<<< orphan*/  sb_hiwat; int /*<<< orphan*/  sb_flags; } ;
struct socket {TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; int /*<<< orphan*/  so_fibnum; TYPE_3__ so_rcv; int /*<<< orphan*/  so_sigio; TYPE_3__ so_snd; int /*<<< orphan*/  sol_sbsnd_flags; int /*<<< orphan*/  sol_sbrcv_flags; int /*<<< orphan*/  so_state; } ;
struct file {struct socket* f_data; } ;
struct TYPE_9__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_8__ {int (* pru_control ) (struct socket*,int,void*,int /*<<< orphan*/ ,struct thread*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  FIOASYNC 137 
#define  FIOGETOWN 136 
#define  FIONBIO 135 
#define  FIONREAD 134 
#define  FIONSPACE 133 
#define  FIONWRITE 132 
#define  FIOSETOWN 131 
 char FUNC2 (int) ; 
 int SBS_RCVATMARK ; 
 int /*<<< orphan*/  SB_ASYNC ; 
#define  SIOCATMARK 130 
#define  SIOCGPGRP 129 
#define  SIOCSPGRP 128 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  SS_ASYNC ; 
 int /*<<< orphan*/  SS_NBIO ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct socket*,int,void*,struct thread*) ; 
 int FUNC11 (int,void*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int FUNC15 (struct socket*,int,void*,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC16(struct file *fp, u_long cmd, void *data, struct ucred *active_cred,
    struct thread *td)
{
	struct socket *so = fp->f_data;
	int error = 0;

	switch (cmd) {
	case FIONBIO:
		FUNC5(so);
		if (*(int *)data)
			so->so_state |= SS_NBIO;
		else
			so->so_state &= ~SS_NBIO;
		FUNC6(so);
		break;

	case FIOASYNC:
		if (*(int *)data) {
			FUNC5(so);
			so->so_state |= SS_ASYNC;
			if (FUNC7(so)) {
				so->sol_sbrcv_flags |= SB_ASYNC;
				so->sol_sbsnd_flags |= SB_ASYNC;
			} else {
				FUNC3(&so->so_rcv);
				so->so_rcv.sb_flags |= SB_ASYNC;
				FUNC4(&so->so_rcv);
				FUNC3(&so->so_snd);
				so->so_snd.sb_flags |= SB_ASYNC;
				FUNC4(&so->so_snd);
			}
			FUNC6(so);
		} else {
			FUNC5(so);
			so->so_state &= ~SS_ASYNC;
			if (FUNC7(so)) {
				so->sol_sbrcv_flags &= ~SB_ASYNC;
				so->sol_sbsnd_flags &= ~SB_ASYNC;
			} else {
				FUNC3(&so->so_rcv);
				so->so_rcv.sb_flags &= ~SB_ASYNC;
				FUNC4(&so->so_rcv);
				FUNC3(&so->so_snd);
				so->so_snd.sb_flags &= ~SB_ASYNC;
				FUNC4(&so->so_snd);
			}
			FUNC6(so);
		}
		break;

	case FIONREAD:
		/* Unlocked read. */
		*(int *)data = FUNC12(&so->so_rcv);
		break;

	case FIONWRITE:
		/* Unlocked read. */
		*(int *)data = FUNC12(&so->so_snd);
		break;

	case FIONSPACE:
		/* Unlocked read. */
		if ((so->so_snd.sb_hiwat < FUNC14(&so->so_snd)) ||
		    (so->so_snd.sb_mbmax < so->so_snd.sb_mbcnt))
			*(int *)data = 0;
		else
			*(int *)data = FUNC13(&so->so_snd);
		break;

	case FIOSETOWN:
		error = FUNC9(*(int *)data, &so->so_sigio);
		break;

	case FIOGETOWN:
		*(int *)data = FUNC8(&so->so_sigio);
		break;

	case SIOCSPGRP:
		error = FUNC9(-(*(int *)data), &so->so_sigio);
		break;

	case SIOCGPGRP:
		*(int *)data = -FUNC8(&so->so_sigio);
		break;

	case SIOCATMARK:
		/* Unlocked read. */
		*(int *)data = (so->so_rcv.sb_state & SBS_RCVATMARK) != 0;
		break;
	default:
		/*
		 * Interface/routing/protocol specific ioctls: interface and
		 * routing ioctls should have a different entry since a
		 * socket is unnecessary.
		 */
		if (FUNC2(cmd) == 'i')
			error = FUNC10(so, cmd, data, td);
		else if (FUNC2(cmd) == 'r') {
			FUNC1(so->so_vnet);
			error = FUNC11(cmd, data, so->so_fibnum);
			FUNC0();
		} else {
			FUNC1(so->so_vnet);
			error = ((*so->so_proto->pr_usrreqs->pru_control)
			    (so, cmd, data, 0, td));
			FUNC0();
		}
		break;
	}
	return (error);
}