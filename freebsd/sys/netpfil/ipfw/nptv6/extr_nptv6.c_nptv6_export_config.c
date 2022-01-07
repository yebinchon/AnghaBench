
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int set; } ;
struct nptv6_cfg {int flags; TYPE_1__ no; int plen; int external; int if_name; int internal; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {int flags; int name; int set; int plen; int external; int if_name; int internal; } ;
typedef TYPE_2__ ipfw_nptv6_cfg ;


 int IF_NAMESIZE ;
 int NPTV6_DYNAMIC_PREFIX ;
 int NPTV6_FLAGSMASK ;
 int memcpy (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
nptv6_export_config(struct ip_fw_chain *ch, struct nptv6_cfg *cfg,
    ipfw_nptv6_cfg *uc)
{

 uc->internal = cfg->internal;
 if (cfg->flags & NPTV6_DYNAMIC_PREFIX)
  memcpy(uc->if_name, cfg->if_name, IF_NAMESIZE);
 else
  uc->external = cfg->external;
 uc->plen = cfg->plen;
 uc->flags = cfg->flags & NPTV6_FLAGSMASK;
 uc->set = cfg->no.set;
 strlcpy(uc->name, cfg->no.name, sizeof(uc->name));
}
