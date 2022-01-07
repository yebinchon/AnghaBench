
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ubuf ;
struct sysctl_req {int dummy; } ;


 int SYSCTL_OUT (struct sysctl_req*,char*,int) ;
 int memset (void*,int ,int) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int
read_out(struct sysctl_req *req, uint64_t val)
{
 char ubuf[16];

 memset((void *)ubuf, 0, sizeof(ubuf));
 snprintf(ubuf, sizeof(ubuf), "0x%jx", val);

 return SYSCTL_OUT(req, ubuf, sizeof(ubuf));
}
