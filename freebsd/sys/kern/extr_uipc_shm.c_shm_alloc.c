
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ucred {int cr_gid; int cr_uid; } ;
struct shmfd {int shm_rl; int shm_mtx; int shm_refs; int shm_ino; int shm_birthtime; int shm_ctime; int shm_mtime; int shm_atime; TYPE_1__* shm_object; scalar_t__ shm_size; int shm_mode; int shm_gid; int shm_uid; } ;
typedef int mode_t ;
struct TYPE_6__ {scalar_t__ pg_color; } ;


 int KASSERT (int ,char*) ;
 int MTX_DEF ;
 int M_SHMFD ;
 int M_WAITOK ;
 int M_ZERO ;
 int OBJT_SWAP ;
 int OBJ_COLORED ;
 int OBJ_NOSPLIT ;
 int OBJ_ONEMAPPING ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int VM_PROT_DEFAULT ;
 int alloc_unr64 (int *) ;
 int mac_posixshm_create (struct ucred*,struct shmfd*) ;
 int mac_posixshm_init (struct shmfd*) ;
 struct shmfd* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rangelock_init (int *) ;
 int refcount_init (int *,int) ;
 int shm_ino_unr ;
 int vfs_timestamp (int *) ;
 int vm_object_clear_flag (TYPE_1__*,int ) ;
 int vm_object_set_flag (TYPE_1__*,int) ;
 TYPE_1__* vm_pager_allocate (int ,int *,scalar_t__,int ,int ,struct ucred*) ;

struct shmfd *
shm_alloc(struct ucred *ucred, mode_t mode)
{
 struct shmfd *shmfd;

 shmfd = malloc(sizeof(*shmfd), M_SHMFD, M_WAITOK | M_ZERO);
 shmfd->shm_size = 0;
 shmfd->shm_uid = ucred->cr_uid;
 shmfd->shm_gid = ucred->cr_gid;
 shmfd->shm_mode = mode;
 shmfd->shm_object = vm_pager_allocate(OBJT_SWAP, ((void*)0),
     shmfd->shm_size, VM_PROT_DEFAULT, 0, ucred);
 KASSERT(shmfd->shm_object != ((void*)0), ("shm_create: vm_pager_allocate"));
 shmfd->shm_object->pg_color = 0;
 VM_OBJECT_WLOCK(shmfd->shm_object);
 vm_object_clear_flag(shmfd->shm_object, OBJ_ONEMAPPING);
 vm_object_set_flag(shmfd->shm_object, OBJ_COLORED | OBJ_NOSPLIT);
 VM_OBJECT_WUNLOCK(shmfd->shm_object);
 vfs_timestamp(&shmfd->shm_birthtime);
 shmfd->shm_atime = shmfd->shm_mtime = shmfd->shm_ctime =
     shmfd->shm_birthtime;
 shmfd->shm_ino = alloc_unr64(&shm_ino_unr);
 refcount_init(&shmfd->shm_refs, 1);
 mtx_init(&shmfd->shm_mtx, "shmrl", ((void*)0), MTX_DEF);
 rangelock_init(&shmfd->shm_rl);





 return (shmfd);
}
