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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct auditpipe_ioctl_preselect {int /*<<< orphan*/  aip_mask; int /*<<< orphan*/  aip_auid; } ;
struct audit_pipe {int ap_qbyteslen; int ap_qoffset; int ap_preselect_mode; int /*<<< orphan*/  ap_drops; int /*<<< orphan*/  ap_reads; int /*<<< orphan*/  ap_inserts; void* ap_preselect_naflags; void* ap_preselect_flags; int /*<<< orphan*/  ap_qlimit; int /*<<< orphan*/  ap_qlen; int /*<<< orphan*/  ap_sigio; int /*<<< orphan*/  ap_flags; } ;
typedef  scalar_t__ caddr_t ;
typedef  void* au_mask_t ;
typedef  int /*<<< orphan*/  au_id_t ;

/* Variables and functions */
#define  AUDITPIPE_DELETE_PRESELECT_AUID 155 
#define  AUDITPIPE_FLUSH 154 
#define  AUDITPIPE_FLUSH_PRESELECT_AUID 153 
#define  AUDITPIPE_GET_DROPS 152 
#define  AUDITPIPE_GET_INSERTS 151 
#define  AUDITPIPE_GET_MAXAUDITDATA 150 
#define  AUDITPIPE_GET_PRESELECT_AUID 149 
#define  AUDITPIPE_GET_PRESELECT_FLAGS 148 
#define  AUDITPIPE_GET_PRESELECT_MODE 147 
#define  AUDITPIPE_GET_PRESELECT_NAFLAGS 146 
#define  AUDITPIPE_GET_QLEN 145 
#define  AUDITPIPE_GET_QLIMIT 144 
#define  AUDITPIPE_GET_QLIMIT_MAX 143 
#define  AUDITPIPE_GET_QLIMIT_MIN 142 
#define  AUDITPIPE_GET_READS 141 
#define  AUDITPIPE_GET_TRUNCATES 140 
#define  AUDITPIPE_PRESELECT_MODE_LOCAL 139 
#define  AUDITPIPE_PRESELECT_MODE_TRAIL 138 
#define  AUDITPIPE_SET_PRESELECT_AUID 137 
#define  AUDITPIPE_SET_PRESELECT_FLAGS 136 
#define  AUDITPIPE_SET_PRESELECT_MODE 135 
#define  AUDITPIPE_SET_PRESELECT_NAFLAGS 134 
#define  AUDITPIPE_SET_QLIMIT 133 
 int /*<<< orphan*/  AUDIT_PIPE_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  AUDIT_PIPE_NBIO ; 
 int /*<<< orphan*/  AUDIT_PIPE_QLIMIT_MAX ; 
 int /*<<< orphan*/  AUDIT_PIPE_QLIMIT_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_pipe*) ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOTTY ; 
#define  FIOASYNC 132 
#define  FIOGETOWN 131 
#define  FIONBIO 130 
#define  FIONREAD 129 
#define  FIOSETOWN 128 
 int /*<<< orphan*/  MAXAUDITDATA ; 
 int /*<<< orphan*/  FUNC4 (struct audit_pipe*) ; 
 int FUNC5 (struct audit_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_pipe*) ; 
 int FUNC7 (struct audit_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct audit_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (void**) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{
	struct auditpipe_ioctl_preselect *aip;
	struct audit_pipe *ap;
	au_mask_t *maskp;
	int error, mode;
	au_id_t auid;

	error = FUNC9((void **)&ap);
	if (error != 0)
		return (error);

	/*
	 * Audit pipe ioctls: first come standard device node ioctls, then
	 * manipulation of pipe settings, and finally, statistics query
	 * ioctls.
	 */
	switch (cmd) {
	case FIONBIO:
		FUNC0(ap);
		if (*(int *)data)
			ap->ap_flags |= AUDIT_PIPE_NBIO;
		else
			ap->ap_flags &= ~AUDIT_PIPE_NBIO;
		FUNC3(ap);
		error = 0;
		break;

	case FIONREAD:
		FUNC0(ap);
		*(int *)data = ap->ap_qbyteslen - ap->ap_qoffset;
		FUNC3(ap);
		error = 0;
		break;

	case FIOASYNC:
		FUNC0(ap);
		if (*(int *)data)
			ap->ap_flags |= AUDIT_PIPE_ASYNC;
		else
			ap->ap_flags &= ~AUDIT_PIPE_ASYNC;
		FUNC3(ap);
		error = 0;
		break;

	case FIOSETOWN:
		error = FUNC11(*(int *)data, &ap->ap_sigio);
		break;

	case FIOGETOWN:
		*(int *)data = FUNC10(&ap->ap_sigio);
		error = 0;
		break;

	case AUDITPIPE_GET_QLEN:
		*(u_int *)data = ap->ap_qlen;
		error = 0;
		break;

	case AUDITPIPE_GET_QLIMIT:
		*(u_int *)data = ap->ap_qlimit;
		error = 0;
		break;

	case AUDITPIPE_SET_QLIMIT:
		/* Lockless integer write. */
		if (*(u_int *)data >= AUDIT_PIPE_QLIMIT_MIN &&
		    *(u_int *)data <= AUDIT_PIPE_QLIMIT_MAX) {
			ap->ap_qlimit = *(u_int *)data;
			error = 0;
		} else
			error = EINVAL;
		break;

	case AUDITPIPE_GET_QLIMIT_MIN:
		*(u_int *)data = AUDIT_PIPE_QLIMIT_MIN;
		error = 0;
		break;

	case AUDITPIPE_GET_QLIMIT_MAX:
		*(u_int *)data = AUDIT_PIPE_QLIMIT_MAX;
		error = 0;
		break;

	case AUDITPIPE_GET_PRESELECT_FLAGS:
		FUNC0(ap);
		maskp = (au_mask_t *)data;
		*maskp = ap->ap_preselect_flags;
		FUNC3(ap);
		error = 0;
		break;

	case AUDITPIPE_SET_PRESELECT_FLAGS:
		FUNC0(ap);
		maskp = (au_mask_t *)data;
		ap->ap_preselect_flags = *maskp;
		FUNC3(ap);
		error = 0;
		break;

	case AUDITPIPE_GET_PRESELECT_NAFLAGS:
		FUNC0(ap);
		maskp = (au_mask_t *)data;
		*maskp = ap->ap_preselect_naflags;
		FUNC3(ap);
		error = 0;
		break;

	case AUDITPIPE_SET_PRESELECT_NAFLAGS:
		FUNC0(ap);
		maskp = (au_mask_t *)data;
		ap->ap_preselect_naflags = *maskp;
		FUNC3(ap);
		error = 0;
		break;

	case AUDITPIPE_GET_PRESELECT_AUID:
		aip = (struct auditpipe_ioctl_preselect *)data;
		error = FUNC7(ap, aip->aip_auid,
		    &aip->aip_mask);
		break;

	case AUDITPIPE_SET_PRESELECT_AUID:
		aip = (struct auditpipe_ioctl_preselect *)data;
		FUNC8(ap, aip->aip_auid, aip->aip_mask);
		error = 0;
		break;

	case AUDITPIPE_DELETE_PRESELECT_AUID:
		auid = *(au_id_t *)data;
		error = FUNC5(ap, auid);
		break;

	case AUDITPIPE_FLUSH_PRESELECT_AUID:
		FUNC6(ap);
		error = 0;
		break;

	case AUDITPIPE_GET_PRESELECT_MODE:
		FUNC0(ap);
		*(int *)data = ap->ap_preselect_mode;
		FUNC3(ap);
		error = 0;
		break;

	case AUDITPIPE_SET_PRESELECT_MODE:
		mode = *(int *)data;
		switch (mode) {
		case AUDITPIPE_PRESELECT_MODE_TRAIL:
		case AUDITPIPE_PRESELECT_MODE_LOCAL:
			FUNC0(ap);
			ap->ap_preselect_mode = mode;
			FUNC3(ap);
			error = 0;
			break;

		default:
			error = EINVAL;
		}
		break;

	case AUDITPIPE_FLUSH:
		if (FUNC1(ap) != 0)
			return (EINTR);
		FUNC0(ap);
		FUNC4(ap);
		FUNC3(ap);
		FUNC2(ap);
		error = 0;
		break;

	case AUDITPIPE_GET_MAXAUDITDATA:
		*(u_int *)data = MAXAUDITDATA;
		error = 0;
		break;

	case AUDITPIPE_GET_INSERTS:
		*(u_int *)data = ap->ap_inserts;
		error = 0;
		break;

	case AUDITPIPE_GET_READS:
		*(u_int *)data = ap->ap_reads;
		error = 0;
		break;

	case AUDITPIPE_GET_DROPS:
		*(u_int *)data = ap->ap_drops;
		error = 0;
		break;

	case AUDITPIPE_GET_TRUNCATES:
		*(u_int *)data = 0;
		error = 0;
		break;

	default:
		error = ENOTTY;
	}
	return (error);
}