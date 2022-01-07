
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockopt {int sopt_level; int sopt_name; size_t sopt_valsize; struct thread* sopt_td; void* sopt_val; int sopt_dir; } ;
struct socket {int dummy; } ;
struct file {struct socket* f_data; } ;
typedef size_t socklen_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDIT_ARG_FD (int) ;
 int EINVAL ;
 int SOPT_GET ;


 int cap_getsockopt_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int panic (char*) ;
 int sogetopt (struct socket*,struct sockopt*) ;

int
kern_getsockopt(struct thread *td, int s, int level, int name, void *val,
    enum uio_seg valseg, socklen_t *valsize)
{
 struct socket *so;
 struct file *fp;
 struct sockopt sopt;
 int error;

 if (val == ((void*)0))
  *valsize = 0;
 if ((int)*valsize < 0)
  return (EINVAL);

 sopt.sopt_dir = SOPT_GET;
 sopt.sopt_level = level;
 sopt.sopt_name = name;
 sopt.sopt_val = val;
 sopt.sopt_valsize = (size_t)*valsize;
 switch (valseg) {
 case 128:
  sopt.sopt_td = td;
  break;
 case 129:
  sopt.sopt_td = ((void*)0);
  break;
 default:
  panic("kern_getsockopt called with bad valseg");
 }

 AUDIT_ARG_FD(s);
 error = getsock_cap(td, s, &cap_getsockopt_rights,
     &fp, ((void*)0), ((void*)0));
 if (error == 0) {
  so = fp->f_data;
  error = sogetopt(so, &sopt);
  *valsize = sopt.sopt_valsize;
  fdrop(fp, td);
 }
 return (error);
}
