
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct nat64lsn_job_item {int src6_hval; int proto; int port; int faddr; struct ipfw_flow_id f_id; struct mbuf* m; } ;
struct TYPE_2__ {int stats; } ;
struct nat64lsn_cfg {TYPE_1__ base; } ;
struct mbuf {int dummy; } ;
typedef int in_addr_t ;


 int IP_FW_DENY ;
 int JTYPE_NEWHOST ;
 int NAT64STAT_INC (int *,int ) ;
 int jhostsreq ;
 struct nat64lsn_job_item* nat64lsn_create_job (struct nat64lsn_cfg*,int ) ;
 int nat64lsn_enqueue_job (struct nat64lsn_cfg*,struct nat64lsn_job_item*) ;

__attribute__((used)) static int
nat64lsn_request_host(struct nat64lsn_cfg *cfg,
    const struct ipfw_flow_id *f_id, struct mbuf **mp, uint32_t hval,
    in_addr_t faddr, uint16_t port, uint8_t proto)
{
 struct nat64lsn_job_item *ji;

 ji = nat64lsn_create_job(cfg, JTYPE_NEWHOST);
 if (ji != ((void*)0)) {
  ji->m = *mp;
  ji->f_id = *f_id;
  ji->faddr = faddr;
  ji->port = port;
  ji->proto = proto;
  ji->src6_hval = hval;

  nat64lsn_enqueue_job(cfg, ji);
  NAT64STAT_INC(&cfg->base.stats, jhostsreq);
  *mp = ((void*)0);
 }
 return (IP_FW_DENY);
}
