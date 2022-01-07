
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int set; int etlv; int name; } ;
struct nptv6_cfg {int name; TYPE_1__ no; int stats; } ;


 int COUNTER_ARRAY_ALLOC (int ,int ,int) ;
 int IPFW_TLV_NPTV6_NAME ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int NPTV6STATS ;
 struct nptv6_cfg* malloc (int,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static struct nptv6_cfg *
nptv6_alloc_config(const char *name, uint8_t set)
{
 struct nptv6_cfg *cfg;

 cfg = malloc(sizeof(struct nptv6_cfg), M_IPFW, M_WAITOK | M_ZERO);
 COUNTER_ARRAY_ALLOC(cfg->stats, NPTV6STATS, M_WAITOK);
 cfg->no.name = cfg->name;
 cfg->no.etlv = IPFW_TLV_NPTV6_NAME;
 cfg->no.set = set;
 strlcpy(cfg->name, name, sizeof(cfg->name));
 return (cfg);
}
