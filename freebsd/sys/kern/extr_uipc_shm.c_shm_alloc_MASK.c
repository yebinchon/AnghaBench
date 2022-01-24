#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ucred {int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct shmfd {int /*<<< orphan*/  shm_rl; int /*<<< orphan*/  shm_mtx; int /*<<< orphan*/  shm_refs; int /*<<< orphan*/  shm_ino; int /*<<< orphan*/  shm_birthtime; int /*<<< orphan*/  shm_ctime; int /*<<< orphan*/  shm_mtime; int /*<<< orphan*/  shm_atime; TYPE_1__* shm_object; scalar_t__ shm_size; int /*<<< orphan*/  shm_mode; int /*<<< orphan*/  shm_gid; int /*<<< orphan*/  shm_uid; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_6__ {scalar_t__ pg_color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_SHMFD ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OBJT_SWAP ; 
 int OBJ_COLORED ; 
 int OBJ_NOSPLIT ; 
 int /*<<< orphan*/  OBJ_ONEMAPPING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,struct shmfd*) ; 
 int /*<<< orphan*/  FUNC5 (struct shmfd*) ; 
 struct shmfd* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  shm_ino_unr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*) ; 

struct shmfd *
FUNC14(struct ucred *ucred, mode_t mode)
{
	struct shmfd *shmfd;

	shmfd = FUNC6(sizeof(*shmfd), M_SHMFD, M_WAITOK | M_ZERO);
	shmfd->shm_size = 0;
	shmfd->shm_uid = ucred->cr_uid;
	shmfd->shm_gid = ucred->cr_gid;
	shmfd->shm_mode = mode;
	shmfd->shm_object = FUNC13(OBJT_SWAP, NULL,
	    shmfd->shm_size, VM_PROT_DEFAULT, 0, ucred);
	FUNC0(shmfd->shm_object != NULL, ("shm_create: vm_pager_allocate"));
	shmfd->shm_object->pg_color = 0;
	FUNC1(shmfd->shm_object);
	FUNC11(shmfd->shm_object, OBJ_ONEMAPPING);
	FUNC12(shmfd->shm_object, OBJ_COLORED | OBJ_NOSPLIT);
	FUNC2(shmfd->shm_object);
	FUNC10(&shmfd->shm_birthtime);
	shmfd->shm_atime = shmfd->shm_mtime = shmfd->shm_ctime =
	    shmfd->shm_birthtime;
	shmfd->shm_ino = FUNC3(&shm_ino_unr);
	FUNC9(&shmfd->shm_refs, 1);
	FUNC7(&shmfd->shm_mtx, "shmrl", NULL, MTX_DEF);
	FUNC8(&shmfd->shm_rl);
#ifdef MAC
	mac_posixshm_init(shmfd);
	mac_posixshm_create(ucred, shmfd);
#endif

	return (shmfd);
}