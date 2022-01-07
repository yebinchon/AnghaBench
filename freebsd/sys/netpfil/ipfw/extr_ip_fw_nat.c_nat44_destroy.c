
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockopt_data {int valsize; scalar_t__ kbuf; } ;
struct ip_fw_chain {int nat; } ;
struct cfg_nat {int id; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_5__ {int name; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;
struct TYPE_6__ {TYPE_2__ ntlv; } ;
typedef TYPE_3__ ipfw_obj_header ;
typedef int ip_fw3_opheader ;


 int EINVAL ;
 int ESRCH ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int LIST_REMOVE (struct cfg_nat*,int ) ;
 int _next ;
 int flush_nat_ptrs (struct ip_fw_chain*,int ) ;
 int free_nat_instance (struct cfg_nat*) ;
 struct cfg_nat* lookup_nat_name (int *,int ) ;
 int strnlen (int ,int) ;

__attribute__((used)) static int
nat44_destroy(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_obj_header *oh;
 struct cfg_nat *ptr;
 ipfw_obj_ntlv *ntlv;


 if (sd->valsize < sizeof(*oh))
  return (EINVAL);

 oh = (ipfw_obj_header *)sd->kbuf;


 if (oh->ntlv.head.length != sizeof(oh->ntlv))
  return (EINVAL);

 ntlv = &oh->ntlv;

 if (strnlen(ntlv->name, sizeof(ntlv->name)) == sizeof(ntlv->name))
  return (EINVAL);

 IPFW_UH_WLOCK(chain);
 ptr = lookup_nat_name(&chain->nat, ntlv->name);
 if (ptr == ((void*)0)) {
  IPFW_UH_WUNLOCK(chain);
  return (ESRCH);
 }
 IPFW_WLOCK(chain);
 LIST_REMOVE(ptr, _next);
 flush_nat_ptrs(chain, ptr->id);
 IPFW_WUNLOCK(chain);
 IPFW_UH_WUNLOCK(chain);

 free_nat_instance(ptr);

 return (0);
}
