
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int MAXPATHLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ __predict_false (int ) ;
 int disablefullpath ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int rootvnode ;
 int vn_fullpath1 (struct thread*,struct vnode*,int ,char*,char**,int ) ;

int
vn_fullpath_global(struct thread *td, struct vnode *vn,
    char **retbuf, char **freebuf)
{
 char *buf;
 int error;

 if (__predict_false(disablefullpath))
  return (ENODEV);
 if (__predict_false(vn == ((void*)0)))
  return (EINVAL);
 buf = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 error = vn_fullpath1(td, vn, rootvnode, buf, retbuf, MAXPATHLEN);
 if (!error)
  *freebuf = buf;
 else
  free(buf, M_TEMP);
 return (error);
}
