
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in6_addr {int dummy; } ;


 int in6_clearscope (struct in6_addr*) ;
 int in6_getscope (struct in6_addr*) ;
 int ntohs (int ) ;

void
in6_splitscope(const struct in6_addr *src, struct in6_addr *dst,
    uint32_t *scopeid)
{
 uint32_t zoneid;

 *dst = *src;
 zoneid = ntohs(in6_getscope(dst));
 in6_clearscope(dst);
 *scopeid = zoneid;
}
