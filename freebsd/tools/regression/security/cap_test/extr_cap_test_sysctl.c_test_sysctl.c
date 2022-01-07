
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;


 int CHECK (int) ;
 int CTL_KERN ;
 int KERN_OSRELDATE ;
 int PASSED ;
 scalar_t__ sysctl (int*,int,int*,size_t*,int *,int ) ;

int
test_sysctl(void)
{
 int i, oid[2];
 int success = PASSED;
 size_t len;

 oid[0] = CTL_KERN;
 oid[1] = KERN_OSRELDATE;
 len = sizeof(i);
 CHECK(sysctl(oid, 2, &i, &len, ((void*)0), 0) == 0);

 return (success);
}
