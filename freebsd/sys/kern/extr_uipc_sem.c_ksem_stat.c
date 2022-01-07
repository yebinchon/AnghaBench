
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; int st_gid; int st_uid; int st_birthtim; int st_mtim; int st_ctim; int st_atim; } ;
struct ksem {int ks_mode; int ks_gid; int ks_uid; int ks_birthtime; int ks_mtime; int ks_ctime; int ks_atime; } ;
struct file {int f_cred; struct ksem* f_data; } ;


 int S_IFREG ;
 int bzero (struct stat*,int) ;
 int mac_posixsem_check_stat (struct ucred*,int ,struct ksem*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_lock ;

__attribute__((used)) static int
ksem_stat(struct file *fp, struct stat *sb, struct ucred *active_cred,
    struct thread *td)
{
 struct ksem *ks;




 ks = fp->f_data;
 bzero(sb, sizeof(*sb));

 mtx_lock(&sem_lock);
 sb->st_atim = ks->ks_atime;
 sb->st_ctim = ks->ks_ctime;
 sb->st_mtim = ks->ks_mtime;
 sb->st_birthtim = ks->ks_birthtime;
 sb->st_uid = ks->ks_uid;
 sb->st_gid = ks->ks_gid;
 sb->st_mode = S_IFREG | ks->ks_mode;
 mtx_unlock(&sem_lock);

 return (0);
}
