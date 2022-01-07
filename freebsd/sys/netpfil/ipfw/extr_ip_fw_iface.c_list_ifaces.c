
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockopt_data {int valsize; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_iface_args {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
struct _ipfw_obj_lheader {int size; int count; int objsize; } ;
typedef int ipfw_obj_lheader ;
typedef int ipfw_iface_info ;
typedef int ip_fw3_opheader ;


 struct namedobj_instance* CHAIN_TO_II (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOMEM ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int export_iface_internal ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,int) ;
 int ipfw_objhash_count (struct namedobj_instance*) ;
 int ipfw_objhash_foreach (struct namedobj_instance*,int ,struct dump_iface_args*) ;

__attribute__((used)) static int
list_ifaces(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 struct namedobj_instance *ii;
 struct _ipfw_obj_lheader *olh;
 struct dump_iface_args da;
 uint32_t count, size;

 olh = (struct _ipfw_obj_lheader *)ipfw_get_sopt_header(sd,sizeof(*olh));
 if (olh == ((void*)0))
  return (EINVAL);
 if (sd->valsize < olh->size)
  return (EINVAL);

 IPFW_UH_RLOCK(ch);
 ii = CHAIN_TO_II(ch);
 if (ii != ((void*)0))
  count = ipfw_objhash_count(ii);
 else
  count = 0;
 size = count * sizeof(ipfw_iface_info) + sizeof(ipfw_obj_lheader);


 olh->count = count;
 olh->objsize = sizeof(ipfw_iface_info);

 if (size > olh->size) {
  olh->size = size;
  IPFW_UH_RUNLOCK(ch);
  return (ENOMEM);
 }
 olh->size = size;

 da.ch = ch;
 da.sd = sd;

 if (ii != ((void*)0))
  ipfw_objhash_foreach(ii, export_iface_internal, &da);
 IPFW_UH_RUNLOCK(ch);

 return (0);
}
