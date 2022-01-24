#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; scalar_t__ st_size; } ;
struct sockbuf {int sb_state; scalar_t__ sb_ctl; } ;
struct socket {TYPE_3__* so_proto; TYPE_1__* so_cred; struct sockbuf so_snd; struct sockbuf so_rcv; } ;
struct file {struct socket* f_data; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {TYPE_2__* pr_usrreqs; } ;
struct TYPE_5__ {int (* pru_sense ) (struct socket*,struct stat*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;

/* Variables and functions */
 int SBS_CANTRCVMORE ; 
 int SBS_CANTSENDMORE ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int S_IFSOCK ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ucred*,struct socket*) ; 
 scalar_t__ FUNC5 (struct sockbuf*) ; 
 int FUNC6 (struct socket*,struct stat*) ; 

__attribute__((used)) static int
FUNC7(struct file *fp, struct stat *ub, struct ucred *active_cred,
    struct thread *td)
{
	struct socket *so = fp->f_data;
#ifdef MAC
	int error;
#endif

	FUNC3((caddr_t)ub, sizeof (*ub));
	ub->st_mode = S_IFSOCK;
#ifdef MAC
	error = mac_socket_check_stat(active_cred, so);
	if (error)
		return (error);
#endif
	if (!FUNC2(so)) {
		struct sockbuf *sb;

		/*
		 * If SBS_CANTRCVMORE is set, but there's still data left
		 * in the receive buffer, the socket is still readable.
		 */
		sb = &so->so_rcv;
		FUNC0(sb);
		if ((sb->sb_state & SBS_CANTRCVMORE) == 0 || FUNC5(sb))
			ub->st_mode |= S_IRUSR | S_IRGRP | S_IROTH;
		ub->st_size = FUNC5(sb) - sb->sb_ctl;
		FUNC1(sb);
	
		sb = &so->so_snd;
		FUNC0(sb);
		if ((sb->sb_state & SBS_CANTSENDMORE) == 0)
			ub->st_mode |= S_IWUSR | S_IWGRP | S_IWOTH;
		FUNC1(sb);
	}
	ub->st_uid = so->so_cred->cr_uid;
	ub->st_gid = so->so_cred->cr_gid;
	return (*so->so_proto->pr_usrreqs->pru_sense)(so, ub);
}