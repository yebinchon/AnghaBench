
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ksem {int ks_mode; char* ks_path; int ks_value; } ;
struct TYPE_6__ {int kf_sem_mode; int kf_sem_value; } ;
struct TYPE_7__ {TYPE_1__ kf_sem; } ;
struct kinfo_file {int kf_path; TYPE_2__ kf_un; int kf_type; } ;
struct filedesc {int dummy; } ;
struct file {struct ksem* f_data; } ;
struct TYPE_10__ {TYPE_4__* td_ucred; } ;
struct TYPE_9__ {TYPE_3__* cr_prison; } ;
struct TYPE_8__ {char* pr_path; } ;


 int KF_TYPE_SEM ;
 int S_IFREG ;
 TYPE_5__* curthread ;
 int ksem_dict_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_lock ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
ksem_fill_kinfo(struct file *fp, struct kinfo_file *kif, struct filedesc *fdp)
{
 const char *path, *pr_path;
 struct ksem *ks;
 size_t pr_pathlen;

 kif->kf_type = KF_TYPE_SEM;
 ks = fp->f_data;
 mtx_lock(&sem_lock);
 kif->kf_un.kf_sem.kf_sem_value = ks->ks_value;
 kif->kf_un.kf_sem.kf_sem_mode = S_IFREG | ks->ks_mode;
 mtx_unlock(&sem_lock);
 if (ks->ks_path != ((void*)0)) {
  sx_slock(&ksem_dict_lock);
  if (ks->ks_path != ((void*)0)) {
   path = ks->ks_path;
   pr_path = curthread->td_ucred->cr_prison->pr_path;
   if (strcmp(pr_path, "/") != 0) {

    pr_pathlen = strlen(pr_path);
    if (strncmp(path, pr_path, pr_pathlen) == 0 &&
        path[pr_pathlen] == '/')
     path += pr_pathlen;
   }
   strlcpy(kif->kf_path, path, sizeof(kif->kf_path));
  }
  sx_sunlock(&ksem_dict_lock);
 }
 return (0);
}
