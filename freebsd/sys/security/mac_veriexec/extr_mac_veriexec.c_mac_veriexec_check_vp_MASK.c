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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vnode {int dummy; } ;
struct vattr {int /*<<< orphan*/  va_gen; int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_fsid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
typedef  int fingerprint_status_t ;
typedef  int accmode_t ;

/* Variables and functions */
 int EAUTH ; 
 int EPERM ; 
#define  FINGERPRINT_FILE 130 
#define  FINGERPRINT_INDIRECT 129 
#define  FINGERPRINT_VALID 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  VERIEXEC_FILES_FIRST ; 
 int FUNC1 (struct vnode*,struct vattr*,struct ucred*) ; 
 int VVERIFY ; 
 int VWRITE ; 
 struct thread* curthread ; 
 int FUNC2 (struct vnode*) ; 
 int FUNC3 (struct vnode*,struct vattr*,struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ucred *cred, struct vnode *vp, accmode_t accmode)
{
	struct vattr va;
	struct thread *td = curthread;
	fingerprint_status_t status;
	int error;

	/* Get vnode attributes */
	error = FUNC1(vp, &va, cred);
	if (error)
		return (error);

	/* Get the fingerprint status for the file */
	error = FUNC3(vp, &va, td,
	    VERIEXEC_FILES_FIRST);
	if (error && error != EAUTH)
		return (error);

	/*
	 * By now we should have status...
	 */
	status = FUNC2(vp);
	if (accmode & VWRITE) {
		/*
		 * If file has a fingerprint then deny the write request,
		 * otherwise invalidate the status so we don't keep checking
		 * for the file having a fingerprint. 
		 */
		switch (status) {
		case FINGERPRINT_FILE:
		case FINGERPRINT_VALID:
		case FINGERPRINT_INDIRECT:
			FUNC0(2,
			    "attempted write to fingerprinted file for dev "
			    "%ju, file %ju.%ju\n", (uintmax_t)va.va_fsid,
			    (uintmax_t)va.va_fileid, (uintmax_t)va.va_gen);
			return (EPERM);
		default:
			break;
		}
	}
	if (accmode & VVERIFY) {
		switch (status) {
		case FINGERPRINT_FILE:
		case FINGERPRINT_VALID:
		case FINGERPRINT_INDIRECT:
			if (error)
				return (error);
			break;
		default:
			/*
			 * Caller wants open to fail unless there is a valid
			 * fingerprint registered. 
			 */
			FUNC0(2, "fingerprint status is %d for dev "
			    "%ju, file %ju.%ju\n", status,
			    (uintmax_t)va.va_fsid, (uintmax_t)va.va_fileid,
			    (uintmax_t)va.va_gen);
			return (EAUTH);
		}
	}
	return (0);
}