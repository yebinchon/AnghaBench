
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int structsize ;
struct rlimit {int dummy; } ;
typedef int pid_t ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_RLIMIT ;
 int RLIM_NLIMITS ;
 int bcopy (int*,void*,int) ;
 void* calloc (int,int) ;
 int err (int,char*,int) ;
 int errx (int,char*,...) ;
 int sysctl (int*,int,void*,size_t*,int *,int ) ;

__attribute__((used)) static void *
elf_note_procstat_rlimit(void *arg, size_t *sizep)
{
 pid_t pid;
 size_t len;
 int i, name[5], structsize;
 void *buf, *p;

 pid = *(pid_t *)arg;
 structsize = sizeof(struct rlimit) * RLIM_NLIMITS;
 buf = calloc(1, sizeof(structsize) + structsize);
 if (buf == ((void*)0))
  errx(1, "out of memory");
 bcopy(&structsize, buf, sizeof(structsize));
 p = (char *)buf + sizeof(structsize);
 name[0] = CTL_KERN;
 name[1] = KERN_PROC;
 name[2] = KERN_PROC_RLIMIT;
 name[3] = pid;
 len = sizeof(struct rlimit);
 for (i = 0; i < RLIM_NLIMITS; i++) {
  name[4] = i;
  if (sysctl(name, 5, p, &len, ((void*)0), 0) == -1)
   err(1, "kern.proc.rlimit.%u", pid);
  if (len != sizeof(struct rlimit))
   errx(1, "kern.proc.rlimit.%u: short read", pid);
  p += len;
 }

 *sizep = sizeof(structsize) + structsize;
 return (buf);
}
