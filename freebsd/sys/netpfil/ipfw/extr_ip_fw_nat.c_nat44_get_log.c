
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockopt_data {size_t valsize; } ;
struct nat44_cfg_nat {scalar_t__ size; int name; } ;
struct ip_fw_chain {int nat; } ;
struct cfg_nat {TYPE_3__* lib; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ head; } ;
struct _ipfw_obj_header {TYPE_2__ ntlv; } ;
typedef struct _ipfw_obj_header ipfw_obj_header ;
typedef int ip_fw3_opheader ;
struct TYPE_6__ {int * logDesc; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ESRCH ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 scalar_t__ LIBALIAS_BUF_SIZE ;
 int export_nat_cfg (struct cfg_nat*,struct nat44_cfg_nat*) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,size_t) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,scalar_t__) ;
 struct cfg_nat* lookup_nat_name (int *,int ) ;
 int memcpy (void*,int *,scalar_t__) ;
 int strnlen (int ,int) ;

__attribute__((used)) static int
nat44_get_log(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_obj_header *oh;
 struct nat44_cfg_nat *ucfg;
 struct cfg_nat *ptr;
 void *pbuf;
 size_t sz;

 sz = sizeof(*oh) + sizeof(*ucfg);

 if (sd->valsize < sz)
  return (EINVAL);

 oh = (struct _ipfw_obj_header *)ipfw_get_sopt_header(sd, sz);


 if (oh->ntlv.head.length != sizeof(oh->ntlv))
  return (EINVAL);

 ucfg = (struct nat44_cfg_nat *)(oh + 1);


 if (strnlen(ucfg->name, sizeof(ucfg->name)) == sizeof(ucfg->name))
  return (EINVAL);

 IPFW_UH_RLOCK(chain);
 ptr = lookup_nat_name(&chain->nat, ucfg->name);
 if (ptr == ((void*)0)) {
  IPFW_UH_RUNLOCK(chain);
  return (ESRCH);
 }

 if (ptr->lib->logDesc == ((void*)0)) {
  IPFW_UH_RUNLOCK(chain);
  return (ENOENT);
 }

 export_nat_cfg(ptr, ucfg);


 ucfg->size = sizeof(struct nat44_cfg_nat) + LIBALIAS_BUF_SIZE;
 if (sd->valsize < sz + sizeof(*oh)) {







  IPFW_UH_RUNLOCK(chain);
  return (ENOMEM);
 }

 pbuf = (void *)ipfw_get_sopt_space(sd, LIBALIAS_BUF_SIZE);
 memcpy(pbuf, ptr->lib->logDesc, LIBALIAS_BUF_SIZE);

 IPFW_UH_RUNLOCK(chain);

 return (0);
}
