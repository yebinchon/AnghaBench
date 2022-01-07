
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int KASSERT (int,char*) ;
 int SYSCTL_OUT (struct sysctl_req*,char const*,int) ;

__attribute__((used)) static int
sbuf_sysctl_drain(void *arg, const char *data, int len)
{
 struct sysctl_req *req = arg;
 int error;

 error = SYSCTL_OUT(req, data, len);
 KASSERT(error >= 0, ("Got unexpected negative value %d", error));
 return (error == 0 ? len : -error);
}
