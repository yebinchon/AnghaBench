
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tid_info {int set; int uidx; int tlen; int * tlvs; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ ipfw_obj_ntlv ;


 int EINVAL ;
 int ESRCH ;
 TYPE_1__* ipfw_find_name_tlv_type (int *,int ,int ,int ) ;
 struct named_object* ipfw_objhash_lookup_name (struct namedobj_instance*,int ,char*) ;

int
ipfw_objhash_find_type(struct namedobj_instance *ni, struct tid_info *ti,
    uint32_t etlv, struct named_object **pno)
{
 char *name;
 ipfw_obj_ntlv *ntlv;
 uint32_t set;

 if (ti->tlvs == ((void*)0))
  return (EINVAL);

 ntlv = ipfw_find_name_tlv_type(ti->tlvs, ti->tlen, ti->uidx, etlv);
 if (ntlv == ((void*)0))
  return (EINVAL);
 name = ntlv->name;






 set = ti->set;
 *pno = ipfw_objhash_lookup_name(ni, set, name);
 if (*pno == ((void*)0))
  return (ESRCH);
 return (0);
}
