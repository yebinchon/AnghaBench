
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;


 int SYSCTL_WLOCK () ;
 int SYSCTL_WUNLOCK () ;
 int sysctl_remove_oid_locked (struct sysctl_oid*,int,int) ;

int
sysctl_remove_oid(struct sysctl_oid *oidp, int del, int recurse)
{
 int error;

 SYSCTL_WLOCK();
 error = sysctl_remove_oid_locked(oidp, del, recurse);
 SYSCTL_WUNLOCK();
 return (error);
}
