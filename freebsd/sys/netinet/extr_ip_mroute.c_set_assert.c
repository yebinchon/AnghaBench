
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int V_pim_assert_enabled ;

__attribute__((used)) static int
set_assert(int i)
{
    if ((i != 1) && (i != 0))
 return EINVAL;

    V_pim_assert_enabled = i;

    return 0;
}
