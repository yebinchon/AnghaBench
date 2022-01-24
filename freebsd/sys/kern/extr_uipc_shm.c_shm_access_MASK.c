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
struct ucred {int dummy; } ;
struct shmfd {int /*<<< orphan*/  shm_gid; int /*<<< orphan*/  shm_uid; int /*<<< orphan*/  shm_mode; } ;
typedef  int /*<<< orphan*/  accmode_t ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  VREAD ; 
 int /*<<< orphan*/  VREG ; 
 int /*<<< orphan*/  VWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shm_timestamp_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct shmfd *shmfd, struct ucred *ucred, int flags)
{
	accmode_t accmode;
	int error;

	accmode = 0;
	if (flags & FREAD)
		accmode |= VREAD;
	if (flags & FWRITE)
		accmode |= VWRITE;
	FUNC0(&shm_timestamp_lock);
	error = FUNC2(VREG, shmfd->shm_mode, shmfd->shm_uid, shmfd->shm_gid,
	    accmode, ucred, NULL);
	FUNC1(&shm_timestamp_lock);
	return (error);
}