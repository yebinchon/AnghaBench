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
struct thread {struct file* td_fpop; } ;
struct smb_share {int dummy; } ;
struct smb_dev {int /*<<< orphan*/  refcount; struct smb_share* sd_share; } ;
struct smb_cred {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cap_read_rights ; 
 struct thread* curthread ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC5 (struct smb_share*,struct smb_cred*) ; 

int
FUNC6(int fd, int mode, struct smb_cred *scred,
	struct smb_share **sspp, struct smb_dev **ssdp)
{
	struct file *fp, *fptmp;
	struct smb_dev *sdp;
	struct smb_share *ssp;
	struct thread *td;
	int error;

	td = curthread;
	error = FUNC4(td, fd, &cap_read_rights, &fp);
	if (error)
		return (error);
	fptmp = td->td_fpop;
	td->td_fpop = fp;
	error = FUNC2((void **)&sdp);
	td->td_fpop = fptmp;
	FUNC3(fp, td);
	if (error || sdp == NULL)
		return (error);
	FUNC0();
	*ssdp = sdp;
	ssp = sdp->sd_share;
	if (ssp == NULL) {
		FUNC1();
		return (ENOTCONN);
	}
	error = FUNC5(ssp, scred);
	if (error == 0) {
		sdp->refcount++;
		*sspp = ssp;
	}
	FUNC1();
	return error;
}