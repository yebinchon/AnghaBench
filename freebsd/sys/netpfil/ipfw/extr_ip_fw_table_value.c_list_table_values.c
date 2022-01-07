
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vdump_args {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
struct sockopt_data {int valsize; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_lheader {int size; int count; int objsize; } ;
typedef int ipfw_table_value ;
typedef int ipfw_obj_lheader ;
typedef int ip_fw3_opheader ;
typedef int da ;


 struct namedobj_instance* CHAIN_TO_VI (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOMEM ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int dump_tvalue ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,int) ;
 int ipfw_objhash_count (struct namedobj_instance*) ;
 int ipfw_objhash_foreach (struct namedobj_instance*,int ,struct vdump_args*) ;
 int memset (struct vdump_args*,int ,int) ;

__attribute__((used)) static int
list_table_values(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 struct _ipfw_obj_lheader *olh;
 struct namedobj_instance *vi;
 struct vdump_args da;
 uint32_t count, size;

 olh = (struct _ipfw_obj_lheader *)ipfw_get_sopt_header(sd,sizeof(*olh));
 if (olh == ((void*)0))
  return (EINVAL);
 if (sd->valsize < olh->size)
  return (EINVAL);

 IPFW_UH_RLOCK(ch);
 vi = CHAIN_TO_VI(ch);

 count = ipfw_objhash_count(vi);
 size = count * sizeof(ipfw_table_value) + sizeof(ipfw_obj_lheader);


 olh->count = count;
 olh->objsize = sizeof(ipfw_table_value);

 if (size > olh->size) {
  olh->size = size;
  IPFW_UH_RUNLOCK(ch);
  return (ENOMEM);
 }
 olh->size = size;




 memset(&da, 0, sizeof(da));
 da.ch = ch;
 da.sd = sd;
 ipfw_objhash_foreach(vi, dump_tvalue, &da);

 IPFW_UH_RUNLOCK(ch);

 return (0);
}
