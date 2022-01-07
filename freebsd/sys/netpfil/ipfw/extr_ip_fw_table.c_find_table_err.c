
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tid_info {int uidx; int set; int tlen; int * tlvs; } ;
struct table_config {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ ipfw_obj_ntlv ;
typedef int bname ;


 int EINVAL ;
 int IPFW_TLV_TBL_NAME ;
 scalar_t__ V_fw_tables_sets ;
 TYPE_1__* ipfw_find_name_tlv_type (int *,int ,int,int ) ;
 struct named_object* ipfw_objhash_lookup_name (struct namedobj_instance*,int ,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
find_table_err(struct namedobj_instance *ni, struct tid_info *ti,
    struct table_config **tc)
{
 char *name, bname[16];
 struct named_object *no;
 ipfw_obj_ntlv *ntlv;
 uint32_t set;

 if (ti->tlvs != ((void*)0)) {
  ntlv = ipfw_find_name_tlv_type(ti->tlvs, ti->tlen, ti->uidx,
      IPFW_TLV_TBL_NAME);
  if (ntlv == ((void*)0))
   return (EINVAL);
  name = ntlv->name;






  set = (V_fw_tables_sets != 0) ? ti->set : 0;
 } else {
  snprintf(bname, sizeof(bname), "%d", ti->uidx);
  name = bname;
  set = 0;
 }

 no = ipfw_objhash_lookup_name(ni, set, name);
 *tc = (struct table_config *)no;

 return (0);
}
