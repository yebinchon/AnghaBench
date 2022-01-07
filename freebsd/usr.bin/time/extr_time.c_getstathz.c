
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockinfo {int stathz; } ;


 int CTL_KERN ;
 int KERN_CLOCKRATE ;
 int err (int,char*) ;
 int sysctl (int*,int,struct clockinfo*,size_t*,int *,int ) ;

__attribute__((used)) static int
getstathz(void)
{
 int mib[2];
 size_t size;
 struct clockinfo clockrate;

 mib[0] = CTL_KERN;
 mib[1] = KERN_CLOCKRATE;
 size = sizeof clockrate;
 if (sysctl(mib, 2, &clockrate, &size, ((void*)0), 0) == -1)
  err(1, "sysctl kern.clockrate");
 return clockrate.stathz;
}
