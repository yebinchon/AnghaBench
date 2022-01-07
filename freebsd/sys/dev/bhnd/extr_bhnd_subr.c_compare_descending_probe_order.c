
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compare_ascending_probe_order (void const*,void const*) ;

__attribute__((used)) static int
compare_descending_probe_order(const void *lhs, const void *rhs)
{
 return (compare_ascending_probe_order(rhs, lhs));
}
