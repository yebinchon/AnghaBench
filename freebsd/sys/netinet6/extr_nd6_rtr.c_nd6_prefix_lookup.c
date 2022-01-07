
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefixctl {int dummy; } ;
struct nd_prefix {int dummy; } ;


 int ND6_RLOCK () ;
 int ND6_RUNLOCK () ;
 struct nd_prefix* nd6_prefix_lookup_locked (struct nd_prefixctl*) ;

struct nd_prefix *
nd6_prefix_lookup(struct nd_prefixctl *key)
{
 struct nd_prefix *search;

 ND6_RLOCK();
 search = nd6_prefix_lookup_locked(key);
 ND6_RUNLOCK();
 return (search);
}
