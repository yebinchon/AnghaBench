
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int structsize ;
typedef int pid_t ;


 int CTL_KERN ;
 int KERN_PROC ;
 int bcopy (int*,void*,int) ;
 void* calloc (int,int) ;
 int err (int,char*,int,int) ;
 int errx (int,char*) ;
 int sysctl (int*,int,void*,size_t*,int *,int ) ;

__attribute__((used)) static void *
procstat_sysctl(void *arg, int what, size_t structsz, size_t *sizep)
{
 size_t len;
 pid_t pid;
 int name[4], structsize;
 void *buf, *p;

 pid = *(pid_t *)arg;
 structsize = structsz;
 name[0] = CTL_KERN;
 name[1] = KERN_PROC;
 name[2] = what;
 name[3] = pid;
 len = 0;
 if (sysctl(name, 4, ((void*)0), &len, ((void*)0), 0) == -1)
  err(1, "kern.proc.%d.%u", what, pid);
 buf = calloc(1, sizeof(structsize) + len * 4 / 3);
 if (buf == ((void*)0))
  errx(1, "out of memory");
 bcopy(&structsize, buf, sizeof(structsize));
 p = (char *)buf + sizeof(structsize);
 if (sysctl(name, 4, p, &len, ((void*)0), 0) == -1)
  err(1, "kern.proc.%d.%u", what, pid);

 *sizep = sizeof(structsize) + len;
 return (buf);
}
