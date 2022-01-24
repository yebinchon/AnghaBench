#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct socket {scalar_t__ so_pcb; TYPE_1__* so_proto; int /*<<< orphan*/  so_type; } ;
struct proc {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  so_lport; int /*<<< orphan*/  so_rport; int /*<<< orphan*/  so_laddr; int /*<<< orphan*/  so_raddr; int /*<<< orphan*/  so_protocol; int /*<<< orphan*/  so_domain; int /*<<< orphan*/  so_type; } ;
struct TYPE_10__ {TYPE_4__ ar_arg_sockinfo; } ;
struct kaudit_record {TYPE_5__ k_ar; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct inpcb {int /*<<< orphan*/  inp_lport; int /*<<< orphan*/  inp_fport; TYPE_3__ inp_laddr; TYPE_2__ inp_faddr; } ;
struct file {int f_type; scalar_t__ f_data; struct vnode* f_vnode; } ;
struct TYPE_6__ {int /*<<< orphan*/  pr_protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARG_SOCKINFO ; 
#define  DTYPE_FIFO 130 
#define  DTYPE_SOCKET 129 
#define  DTYPE_VNODE 128 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 struct kaudit_record* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 

void
FUNC11(struct proc *p, struct file *fp)
{
	struct kaudit_record *ar;
	struct socket *so;
	struct inpcb *pcb;
	struct vnode *vp;

	ar = FUNC9();
	if (ar == NULL)
		return;

	switch (fp->f_type) {
	case DTYPE_VNODE:
	case DTYPE_FIFO:
		/*
		 * XXXAUDIT: Only possibly to record as first vnode?
		 */
		vp = fp->f_vnode;
		FUNC10(vp, LK_SHARED | LK_RETRY);
		FUNC8(vp);
		FUNC7(vp, 0);
		break;

	case DTYPE_SOCKET:
		so = (struct socket *)fp->f_data;
		if (FUNC1(so, PF_INET)) {
			FUNC5(so);
			ar->k_ar.ar_arg_sockinfo.so_type =
			    so->so_type;
			ar->k_ar.ar_arg_sockinfo.so_domain =
			    FUNC4(so);
			ar->k_ar.ar_arg_sockinfo.so_protocol =
			    so->so_proto->pr_protocol;
			FUNC6(so);
			pcb = (struct inpcb *)so->so_pcb;
			FUNC2(pcb);
			ar->k_ar.ar_arg_sockinfo.so_raddr =
			    pcb->inp_faddr.s_addr;
			ar->k_ar.ar_arg_sockinfo.so_laddr =
			    pcb->inp_laddr.s_addr;
			ar->k_ar.ar_arg_sockinfo.so_rport =
			    pcb->inp_fport;
			ar->k_ar.ar_arg_sockinfo.so_lport =
			    pcb->inp_lport;
			FUNC3(pcb);
			FUNC0(ar, ARG_SOCKINFO);
		}
		break;

	default:
		/* XXXAUDIT: else? */
		break;
	}
}