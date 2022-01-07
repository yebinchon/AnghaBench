
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int set; int etlv; int name; } ;
struct TYPE_4__ {int cnt; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
struct nat64stl_cfg {int name; TYPE_3__ no; TYPE_2__ base; } ;


 int COUNTER_ARRAY_ALLOC (int ,int ,int) ;
 int IPFW_TLV_NAT64STL_NAME ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int NAT64STATS ;
 struct nat64stl_cfg* malloc (int,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static struct nat64stl_cfg *
nat64stl_alloc_config(const char *name, uint8_t set)
{
 struct nat64stl_cfg *cfg;

 cfg = malloc(sizeof(struct nat64stl_cfg), M_IPFW, M_WAITOK | M_ZERO);
 COUNTER_ARRAY_ALLOC(cfg->base.stats.cnt, NAT64STATS, M_WAITOK);
 cfg->no.name = cfg->name;
 cfg->no.etlv = IPFW_TLV_NAT64STL_NAME;
 cfg->no.set = set;
 strlcpy(cfg->name, name, sizeof(cfg->name));
 return (cfg);
}
