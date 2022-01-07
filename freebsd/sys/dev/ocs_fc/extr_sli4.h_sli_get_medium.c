
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int topology; } ;
struct TYPE_5__ {TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_link_medium_e ;






 int SLI_LINK_MEDIUM_ETHERNET ;
 int SLI_LINK_MEDIUM_FC ;
 int SLI_LINK_MEDIUM_MAX ;

__attribute__((used)) static inline sli4_link_medium_e
sli_get_medium(sli4_t *sli4)
{
 switch (sli4->config.topology) {
 case 130:
  return SLI_LINK_MEDIUM_ETHERNET;
 case 131:
 case 128:
 case 129:
  return SLI_LINK_MEDIUM_FC;
 default:
  return SLI_LINK_MEDIUM_MAX;
 }
}
