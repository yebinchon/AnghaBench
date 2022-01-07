
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xinpgen {int dummy; } ;


 int err (int,char*,char const*) ;
 int errx (int,char*,...) ;
 struct xinpgen* malloc (size_t) ;
 int sysctlbyname (char const*,struct xinpgen*,size_t*,int *,int ) ;

__attribute__((used)) static struct xinpgen *
getxpcblist(const char *name)
{
 struct xinpgen *xinp;
 size_t len;
 int rv;

 len = 0;
 rv = sysctlbyname(name, ((void*)0), &len, ((void*)0), 0);
 if (rv == -1)
  err(1, "sysctlbyname %s", name);

 if (len == 0)
  errx(1, "%s is empty", name);

 xinp = malloc(len);
 if (xinp == ((void*)0))
  errx(1, "malloc failed");

 rv = sysctlbyname(name, xinp, &len, ((void*)0), 0);
 if (rv == -1)
  err(1, "sysctlbyname %s", name);

 return (xinp);
}
