
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; int st_nlink; int st_ino; int st_dev; int st_gid; int st_uid; int st_birthtim; int st_mtim; int st_ctim; int st_atim; int st_blksize; int st_size; int st_blocks; } ;
struct shmfd {int shm_mode; TYPE_1__* shm_object; int shm_ino; int shm_gid; int shm_uid; int shm_birthtime; int shm_mtime; int shm_ctime; int shm_atime; int shm_size; } ;
struct file {int f_cred; struct shmfd* f_data; } ;
struct TYPE_2__ {int ref_count; } ;


 int PAGE_SIZE ;
 int S_IFREG ;
 int bzero (struct stat*,int) ;
 int howmany (int ,int ) ;
 int mac_posixshm_check_stat (struct ucred*,int ,struct shmfd*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int shm_dev_ino ;
 int shm_timestamp_lock ;

__attribute__((used)) static int
shm_stat(struct file *fp, struct stat *sb, struct ucred *active_cred,
    struct thread *td)
{
 struct shmfd *shmfd;




 shmfd = fp->f_data;
 bzero(sb, sizeof(*sb));
 sb->st_blksize = PAGE_SIZE;
 sb->st_size = shmfd->shm_size;
 sb->st_blocks = howmany(sb->st_size, sb->st_blksize);
 mtx_lock(&shm_timestamp_lock);
 sb->st_atim = shmfd->shm_atime;
 sb->st_ctim = shmfd->shm_ctime;
 sb->st_mtim = shmfd->shm_mtime;
 sb->st_birthtim = shmfd->shm_birthtime;
 sb->st_mode = S_IFREG | shmfd->shm_mode;
 sb->st_uid = shmfd->shm_uid;
 sb->st_gid = shmfd->shm_gid;
 mtx_unlock(&shm_timestamp_lock);
 sb->st_dev = shm_dev_ino;
 sb->st_ino = shmfd->shm_ino;
 sb->st_nlink = shmfd->shm_object->ref_count;

 return (0);
}
