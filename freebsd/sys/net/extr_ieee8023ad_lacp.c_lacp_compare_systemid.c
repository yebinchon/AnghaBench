
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_systemid {int dummy; } ;


 int memcmp (struct lacp_systemid const*,struct lacp_systemid const*,int) ;

__attribute__((used)) static int
lacp_compare_systemid(const struct lacp_systemid *a,
    const struct lacp_systemid *b)
{
 return (memcmp(a, b, sizeof(*a)));
}
