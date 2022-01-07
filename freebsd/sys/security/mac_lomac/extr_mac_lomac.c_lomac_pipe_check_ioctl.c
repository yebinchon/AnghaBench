
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int dummy; } ;
struct label {int dummy; } ;


 int lomac_enabled ;

__attribute__((used)) static int
lomac_pipe_check_ioctl(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel, unsigned long cmd, void *data)
{

 if (!lomac_enabled)
  return (0);



 return (0);
}
