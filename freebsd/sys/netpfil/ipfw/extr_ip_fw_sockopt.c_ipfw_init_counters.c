
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPFW_RULE_CNTR_SIZE ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_PCPU ;
 int V_ipfw_cntr_zone ;
 int uma_zcreate (char*,int ,int *,int *,int *,int *,int ,int ) ;

void
ipfw_init_counters()
{

 V_ipfw_cntr_zone = uma_zcreate("IPFW counters",
     IPFW_RULE_CNTR_SIZE, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, UMA_ZONE_PCPU);
}
