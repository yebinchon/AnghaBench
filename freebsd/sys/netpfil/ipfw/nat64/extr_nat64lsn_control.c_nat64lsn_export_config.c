
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int name; int set; } ;
struct TYPE_7__ {int flags; int plat_plen; int plat_prefix; } ;
struct nat64lsn_cfg {TYPE_3__ no; TYPE_2__ base; int plen4; int prefix4; int st_icmp_ttl; int st_udp_ttl; int st_estab_ttl; int st_close_ttl; int st_syn_ttl; int pg_delete_delay; int host_delete_delay; int jmaxlen; int states_chunks; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_9__ {int flags; int name; int set; int plen6; int plen4; int prefix6; TYPE_1__ prefix4; int st_icmp_ttl; int st_udp_ttl; int st_estab_ttl; int st_close_ttl; int st_syn_ttl; int pg_delete_delay; int nh_delete_delay; int jmaxlen; int states_chunks; } ;
typedef TYPE_4__ ipfw_nat64lsn_cfg ;


 int NAT64LSN_FLAGSMASK ;
 int htonl (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
nat64lsn_export_config(struct ip_fw_chain *ch, struct nat64lsn_cfg *cfg,
    ipfw_nat64lsn_cfg *uc)
{

 uc->flags = cfg->base.flags & NAT64LSN_FLAGSMASK;
 uc->states_chunks = cfg->states_chunks;
 uc->jmaxlen = cfg->jmaxlen;
 uc->nh_delete_delay = cfg->host_delete_delay;
 uc->pg_delete_delay = cfg->pg_delete_delay;
 uc->st_syn_ttl = cfg->st_syn_ttl;
 uc->st_close_ttl = cfg->st_close_ttl;
 uc->st_estab_ttl = cfg->st_estab_ttl;
 uc->st_udp_ttl = cfg->st_udp_ttl;
 uc->st_icmp_ttl = cfg->st_icmp_ttl;
 uc->prefix4.s_addr = htonl(cfg->prefix4);
 uc->prefix6 = cfg->base.plat_prefix;
 uc->plen4 = cfg->plen4;
 uc->plen6 = cfg->base.plat_plen;
 uc->set = cfg->no.set;
 strlcpy(uc->name, cfg->no.name, sizeof(uc->name));
}
