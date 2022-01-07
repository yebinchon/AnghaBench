
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct tid_info {int uidx; int tlen; int * tlvs; } ;
struct TYPE_4__ {scalar_t__ set; int subtype; int name; } ;
struct table_config {int vshared; int ti_copy; int astate; int tablename; struct table_algo* ta; int tflags; TYPE_1__ no; } ;
struct table_algo {int (* init ) (struct ip_fw_chain*,int *,int *,char*,int ) ;int type; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {char* name; scalar_t__ set; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;
typedef int bname ;


 int IPFW_TLV_TBL_NAME ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ V_fw_tables_sets ;
 int free (struct table_config*,int ) ;
 TYPE_2__* ipfw_find_name_tlv_type (int *,int ,int,int ) ;
 struct table_config* malloc (int,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (int ,char*,int) ;
 int stub1 (struct ip_fw_chain*,int *,int *,char*,int ) ;

__attribute__((used)) static struct table_config *
alloc_table_config(struct ip_fw_chain *ch, struct tid_info *ti,
    struct table_algo *ta, char *aname, uint8_t tflags)
{
 char *name, bname[16];
 struct table_config *tc;
 int error;
 ipfw_obj_ntlv *ntlv;
 uint32_t set;

 if (ti->tlvs != ((void*)0)) {
  ntlv = ipfw_find_name_tlv_type(ti->tlvs, ti->tlen, ti->uidx,
      IPFW_TLV_TBL_NAME);
  if (ntlv == ((void*)0))
   return (((void*)0));
  name = ntlv->name;
  set = (V_fw_tables_sets == 0) ? 0 : ntlv->set;
 } else {

  snprintf(bname, sizeof(bname), "%d", ti->uidx);
  name = bname;
  set = 0;
 }

 tc = malloc(sizeof(struct table_config), M_IPFW, M_WAITOK | M_ZERO);
 tc->no.name = tc->tablename;
 tc->no.subtype = ta->type;
 tc->no.set = set;
 tc->tflags = tflags;
 tc->ta = ta;
 strlcpy(tc->tablename, name, sizeof(tc->tablename));

 tc->vshared = 1;


 error = ta->init(ch, &tc->astate, &tc->ti_copy, aname, tflags);
 if (error != 0) {
  free(tc, M_IPFW);
  return (((void*)0));
 }

 return (tc);
}
