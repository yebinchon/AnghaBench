
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int oid ;


 int CTL_MAXNAME ;
 int CTL_SYSCTL ;
 int CTL_SYSCTL_NAME2OID ;
 int kernel_sysctl (struct thread*,int*,size_t,void*,size_t*,void*,size_t,size_t*,int) ;
 int strlen (char*) ;

int
kernel_sysctlbyname(struct thread *td, char *name, void *old, size_t *oldlenp,
    void *new, size_t newlen, size_t *retval, int flags)
{
        int oid[CTL_MAXNAME];
        size_t oidlen, plen;
 int error;

 oid[0] = CTL_SYSCTL;
 oid[1] = CTL_SYSCTL_NAME2OID;
 oidlen = sizeof(oid);

 error = kernel_sysctl(td, oid, 2, oid, &oidlen,
     (void *)name, strlen(name), &plen, flags);
 if (error)
  return (error);

 error = kernel_sysctl(td, oid, plen / sizeof(int), old, oldlenp,
     new, newlen, retval, flags);
 return (error);
}
