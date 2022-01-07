
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct table_info {int data; } ;
struct nhop6_basic {int dummy; } ;
struct nhop4_basic {int dummy; } ;
struct in_addr {int s_addr; } ;
struct in6_addr {int dummy; } ;
typedef int in_addr_t ;


 int ENOENT ;
 int fib4_lookup_nh_basic (int ,struct in_addr,int ,int ,struct nhop4_basic*) ;
 int fib6_lookup_nh_basic (int ,struct in6_addr*,int ,int ,int ,struct nhop6_basic*) ;

__attribute__((used)) static int
ta_lookup_kfib(struct table_info *ti, void *key, uint32_t keylen,
    uint32_t *val)
{







 int error;

 error = ENOENT;
 if (error != 0)
  return (0);

 *val = 0;

 return (1);
}
