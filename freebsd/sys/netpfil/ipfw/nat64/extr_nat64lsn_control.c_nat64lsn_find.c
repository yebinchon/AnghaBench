
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nat64lsn_cfg {int dummy; } ;
struct namedobj_instance {int dummy; } ;


 int IPFW_TLV_NAT64LSN_NAME ;
 scalar_t__ ipfw_objhash_lookup_name_type (struct namedobj_instance*,int ,int ,char const*) ;

__attribute__((used)) static struct nat64lsn_cfg *
nat64lsn_find(struct namedobj_instance *ni, const char *name, uint8_t set)
{
 struct nat64lsn_cfg *cfg;

 cfg = (struct nat64lsn_cfg *)ipfw_objhash_lookup_name_type(ni, set,
     IPFW_TLV_NAT64LSN_NAME, name);

 return (cfg);
}
