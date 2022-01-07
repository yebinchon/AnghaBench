
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct netconfig {int dummy; } ;
struct __rpc_sockinfo {int si_proto; int si_socktype; int si_af; } ;
struct TYPE_3__ {int td_ucred; } ;


 int __rpc_nconf2sockinfo (struct netconfig const*,struct __rpc_sockinfo*) ;
 TYPE_1__* curthread ;
 int socreate (int ,struct socket**,int ,int ,int ,TYPE_1__*) ;

struct socket *
__rpc_nconf2socket(const struct netconfig *nconf)
{
 struct __rpc_sockinfo si;
 struct socket *so;
 int error;

 if (!__rpc_nconf2sockinfo(nconf, &si))
  return 0;

 so = ((void*)0);
 error = socreate(si.si_af, &so, si.si_socktype, si.si_proto,
     curthread->td_ucred, curthread);

 if (error)
  return ((void*)0);
 else
  return so;
}
