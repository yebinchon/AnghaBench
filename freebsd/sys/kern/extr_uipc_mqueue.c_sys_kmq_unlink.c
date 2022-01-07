
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct mqfs_node {int dummy; } ;
struct kmq_unlink_args {int path; } ;
struct TYPE_2__ {int mi_lock; int mi_root; } ;


 int AUDIT_ARG_UPATH1_CANON (char*) ;
 int EINVAL ;
 int ENOENT ;
 int MQFS_NAMELEN ;
 int copyinstr (int ,char*,int,int *) ;
 int do_unlink (struct mqfs_node*,int ) ;
 TYPE_1__ mqfs_data ;
 struct mqfs_node* mqfs_search (int ,char*,int,int ) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
sys_kmq_unlink(struct thread *td, struct kmq_unlink_args *uap)
{
 char path[MQFS_NAMELEN+1];
 struct mqfs_node *pn;
 int error, len;

 error = copyinstr(uap->path, path, MQFS_NAMELEN + 1, ((void*)0));
        if (error)
  return (error);

 len = strlen(path);
 if (len < 2 || path[0] != '/' || strchr(path + 1, '/') != ((void*)0))
  return (EINVAL);
 if (strcmp(path, "/.") == 0 || strcmp(path, "/..") == 0)
  return (EINVAL);
 AUDIT_ARG_UPATH1_CANON(path);

 sx_xlock(&mqfs_data.mi_lock);
 pn = mqfs_search(mqfs_data.mi_root, path + 1, len - 1, td->td_ucred);
 if (pn != ((void*)0))
  error = do_unlink(pn, td->td_ucred);
 else
  error = ENOENT;
 sx_xunlock(&mqfs_data.mi_lock);
 return (error);
}
