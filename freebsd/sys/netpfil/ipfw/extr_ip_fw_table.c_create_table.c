
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tid_info {int type; } ;
struct sockopt_data {int valsize; scalar_t__ kbuf; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct _ipfw_obj_header {TYPE_1__ ntlv; } ;
struct TYPE_5__ {char* algoname; int type; } ;
typedef TYPE_2__ ipfw_xtable_info ;
typedef int ip_fw3_opheader ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EEXIST ;
 int EINVAL ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 scalar_t__ check_table_name (char*) ;
 int create_table_internal (struct ip_fw_chain*,struct tid_info*,char*,TYPE_2__*,int *,int ) ;
 int * find_table (struct namedobj_instance*,struct tid_info*) ;
 int objheader_to_ti (struct _ipfw_obj_header*,struct tid_info*) ;
 int strnlen (char*,int) ;

__attribute__((used)) static int
create_table(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 struct _ipfw_obj_header *oh;
 ipfw_xtable_info *i;
 char *tname, *aname;
 struct tid_info ti;
 struct namedobj_instance *ni;

 if (sd->valsize != sizeof(*oh) + sizeof(ipfw_xtable_info))
  return (EINVAL);

 oh = (struct _ipfw_obj_header *)sd->kbuf;
 i = (ipfw_xtable_info *)(oh + 1);





 tname = oh->ntlv.name;
 aname = i->algoname;
 if (check_table_name(tname) != 0 ||
     strnlen(aname, sizeof(i->algoname)) == sizeof(i->algoname))
  return (EINVAL);

 if (aname[0] == '\0') {

  aname = ((void*)0);
 }

 objheader_to_ti(oh, &ti);
 ti.type = i->type;

 ni = CHAIN_TO_NI(ch);

 IPFW_UH_RLOCK(ch);
 if (find_table(ni, &ti) != ((void*)0)) {
  IPFW_UH_RUNLOCK(ch);
  return (EEXIST);
 }
 IPFW_UH_RUNLOCK(ch);

 return (create_table_internal(ch, &ti, aname, i, ((void*)0), 0));
}
