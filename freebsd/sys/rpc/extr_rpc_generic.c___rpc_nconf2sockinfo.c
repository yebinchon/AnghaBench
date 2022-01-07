
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netid_af {int dummy; } ;
struct netconfig {char* nc_netid; scalar_t__ nc_semantics; } ;
struct __rpc_sockinfo {int si_socktype; int si_af; int si_alen; int si_proto; } ;
struct TYPE_2__ {char* netid; int protocol; int af; } ;


 int __rpc_get_a_size (int ) ;
 int __rpc_seman2socktype (int) ;
 TYPE_1__* na_cvt ;
 scalar_t__ strcmp (char*,char*) ;

int
__rpc_nconf2sockinfo(const struct netconfig *nconf, struct __rpc_sockinfo *sip)
{
 int i;

 for (i = 0; i < (sizeof na_cvt) / (sizeof (struct netid_af)); i++)
  if (strcmp(na_cvt[i].netid, nconf->nc_netid) == 0 || (
      strcmp(nconf->nc_netid, "unix") == 0 &&
      strcmp(na_cvt[i].netid, "local") == 0)) {
   sip->si_af = na_cvt[i].af;
   sip->si_proto = na_cvt[i].protocol;
   sip->si_socktype =
       __rpc_seman2socktype((int)nconf->nc_semantics);
   if (sip->si_socktype == -1)
    return 0;
   sip->si_alen = __rpc_get_a_size(sip->si_af);
   return 1;
  }

 return 0;
}
