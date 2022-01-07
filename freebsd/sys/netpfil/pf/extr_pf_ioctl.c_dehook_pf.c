
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_pf_ip4_in_hook ;
 int V_pf_ip4_out_hook ;
 int V_pf_ip6_in_hook ;
 int V_pf_ip6_out_hook ;
 scalar_t__ V_pf_pfil_hooked ;
 int pfil_remove_hook (int ) ;

__attribute__((used)) static int
dehook_pf(void)
{

 if (V_pf_pfil_hooked == 0)
  return (0);
 V_pf_pfil_hooked = 0;
 return (0);
}
