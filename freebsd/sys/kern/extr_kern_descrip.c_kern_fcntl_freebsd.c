
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct flock {int l_whence; int l_type; int l_pid; int l_len; int l_start; int l_sysid; } ;
struct __oflock {int l_whence; int l_type; int l_pid; int l_len; int l_start; int l_sysid; } ;
typedef int ofl ;
typedef int fl ;
 int copyin (void*,struct flock*,int) ;
 int copyout (struct flock*,void*,int) ;
 int kern_fcntl (struct thread*,int,int,intptr_t) ;

int
kern_fcntl_freebsd(struct thread *td, int fd, int cmd, long arg)
{
 struct flock fl;
 struct __oflock ofl;
 intptr_t arg1;
 int error, newcmd;

 error = 0;
 newcmd = cmd;
 switch (cmd) {
 case 133:
 case 132:
 case 131:



  error = copyin((void *)(intptr_t)arg, &ofl, sizeof(ofl));
  fl.l_start = ofl.l_start;
  fl.l_len = ofl.l_len;
  fl.l_pid = ofl.l_pid;
  fl.l_type = ofl.l_type;
  fl.l_whence = ofl.l_whence;
  fl.l_sysid = 0;

  switch (cmd) {
  case 133:
   newcmd = 134;
   break;
  case 132:
   newcmd = 130;
   break;
  case 131:
   newcmd = 129;
   break;
  }
  arg1 = (intptr_t)&fl;
  break;
 case 134:
 case 130:
 case 129:
 case 128:
  error = copyin((void *)(intptr_t)arg, &fl, sizeof(fl));
  arg1 = (intptr_t)&fl;
  break;
 default:
  arg1 = arg;
  break;
 }
 if (error)
  return (error);
 error = kern_fcntl(td, fd, newcmd, arg1);
 if (error)
  return (error);
 if (cmd == 133) {
  ofl.l_start = fl.l_start;
  ofl.l_len = fl.l_len;
  ofl.l_pid = fl.l_pid;
  ofl.l_type = fl.l_type;
  ofl.l_whence = fl.l_whence;
  error = copyout(&ofl, (void *)(intptr_t)arg, sizeof(ofl));
 } else if (cmd == 134) {
  error = copyout(&fl, (void *)(intptr_t)arg, sizeof(fl));
 }
 return (error);
}
