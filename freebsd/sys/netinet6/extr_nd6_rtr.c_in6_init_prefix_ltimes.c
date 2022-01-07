
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {scalar_t__ ndpr_pltime; scalar_t__ ndpr_vltime; void* ndpr_expire; void* ndpr_preferred; } ;


 scalar_t__ ND6_INFINITE_LIFETIME ;
 void* time_uptime ;

__attribute__((used)) static int
in6_init_prefix_ltimes(struct nd_prefix *ndpr)
{
 if (ndpr->ndpr_pltime == ND6_INFINITE_LIFETIME)
  ndpr->ndpr_preferred = 0;
 else
  ndpr->ndpr_preferred = time_uptime + ndpr->ndpr_pltime;
 if (ndpr->ndpr_vltime == ND6_INFINITE_LIFETIME)
  ndpr->ndpr_expire = 0;
 else
  ndpr->ndpr_expire = time_uptime + ndpr->ndpr_vltime;

 return 0;
}
