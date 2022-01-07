
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; int st_gid; int st_uid; int st_birthtim; int st_ctim; int st_mtim; int st_atim; } ;
struct mqfs_node {int mn_mode; int mn_gid; int mn_uid; int mn_birth; int mn_ctime; int mn_mtime; int mn_atime; } ;
struct file {struct mqfs_node* f_data; } ;
struct TYPE_2__ {int mi_lock; } ;


 int S_IFIFO ;
 int bzero (struct stat*,int) ;
 TYPE_1__ mqfs_data ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
mqf_stat(struct file *fp, struct stat *st, struct ucred *active_cred,
 struct thread *td)
{
 struct mqfs_node *pn = fp->f_data;

 bzero(st, sizeof *st);
 sx_xlock(&mqfs_data.mi_lock);
 st->st_atim = pn->mn_atime;
 st->st_mtim = pn->mn_mtime;
 st->st_ctim = pn->mn_ctime;
 st->st_birthtim = pn->mn_birth;
 st->st_uid = pn->mn_uid;
 st->st_gid = pn->mn_gid;
 st->st_mode = S_IFIFO | pn->mn_mode;
 sx_xunlock(&mqfs_data.mi_lock);
 return (0);
}
