
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_gid; int cr_uid; } ;
struct ksem {unsigned int ks_value; int ks_ref; int ks_birthtime; int ks_ctime; int ks_mtime; int ks_atime; int ks_cv; int ks_mode; int ks_gid; int ks_uid; } ;
typedef int mode_t ;


 int CTL_P1003_1B_SEM_NSEMS_MAX ;
 int M_KSEM ;
 int M_WAITOK ;
 int M_ZERO ;
 int cv_init (int *,char*) ;
 int ksem_count_lock ;
 scalar_t__ ksem_dead ;
 int mac_posixsem_create (struct ucred*,struct ksem*) ;
 int mac_posixsem_init (struct ksem*) ;
 struct ksem* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ nsems ;
 scalar_t__ p31b_getcfg (int ) ;
 int refcount_init (int *,int) ;
 int vfs_timestamp (int *) ;

__attribute__((used)) static struct ksem *
ksem_alloc(struct ucred *ucred, mode_t mode, unsigned int value)
{
 struct ksem *ks;

 mtx_lock(&ksem_count_lock);
 if (nsems == p31b_getcfg(CTL_P1003_1B_SEM_NSEMS_MAX) || ksem_dead) {
  mtx_unlock(&ksem_count_lock);
  return (((void*)0));
 }
 nsems++;
 mtx_unlock(&ksem_count_lock);
 ks = malloc(sizeof(*ks), M_KSEM, M_WAITOK | M_ZERO);
 ks->ks_uid = ucred->cr_uid;
 ks->ks_gid = ucred->cr_gid;
 ks->ks_mode = mode;
 ks->ks_value = value;
 cv_init(&ks->ks_cv, "ksem");
 vfs_timestamp(&ks->ks_birthtime);
 ks->ks_atime = ks->ks_mtime = ks->ks_ctime = ks->ks_birthtime;
 refcount_init(&ks->ks_ref, 1);





 return (ks);
}
