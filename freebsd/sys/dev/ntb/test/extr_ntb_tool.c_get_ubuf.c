
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {size_t newlen; } ;


 int EINVAL ;
 int SYSCTL_IN (struct sysctl_req*,char*,size_t) ;
 size_t TOOL_BUF_LEN ;

__attribute__((used)) static inline int
get_ubuf(struct sysctl_req *req, char *ubuf)
{
 int rc;

 if (req->newlen >= TOOL_BUF_LEN)
  return (EINVAL);

 rc = SYSCTL_IN(req, ubuf, req->newlen);
 if (rc)
  return (rc);
 ubuf[req->newlen] = '\0';

 return (0);
}
