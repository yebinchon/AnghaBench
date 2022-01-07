
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NETDUMP_ASSERT_LOCKED () ;
 int nd_is_enabled ;

__attribute__((used)) static bool
netdump_enabled(void)
{

 NETDUMP_ASSERT_LOCKED();
 return (nd_is_enabled);
}
