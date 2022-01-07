
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {scalar_t__* timeout; } ;


 size_t PFTM_FRAG ;
 TYPE_1__ V_pf_default_rule ;
 int pf_purge_fragments (scalar_t__) ;
 scalar_t__ time_uptime ;

void
pf_purge_expired_fragments(void)
{
 u_int32_t expire = time_uptime -
       V_pf_default_rule.timeout[PFTM_FRAG];

 pf_purge_fragments(expire);
}
