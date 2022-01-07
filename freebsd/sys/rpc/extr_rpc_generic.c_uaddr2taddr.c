
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;
struct netbuf {int dummy; } ;
struct __rpc_sockinfo {int si_af; } ;


 int __rpc_nconf2sockinfo (struct netconfig const*,struct __rpc_sockinfo*) ;
 struct netbuf* __rpc_uaddr2taddr_af (int ,char const*) ;

struct netbuf *
uaddr2taddr(const struct netconfig *nconf, const char *uaddr)
{
 struct __rpc_sockinfo si;

 if (!__rpc_nconf2sockinfo(nconf, &si))
  return ((void*)0);
 return __rpc_uaddr2taddr_af(si.si_af, uaddr);
}
