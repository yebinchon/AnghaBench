
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tei ;
struct tid_info {int uidx; int type; } ;
struct tentry_info {int flags; struct table_value* pvalue; int masklen; int subtype; int * paddr; } ;
struct table_value {int dummy; } ;
struct sockopt_data {int valsize; int kavail; scalar_t__ kbuf; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_16__ {int value; } ;
struct TYPE_14__ {int length; int flags; } ;
struct TYPE_17__ {int idx; TYPE_6__ v; int result; TYPE_4__ head; int masklen; int subtype; int k; } ;
typedef TYPE_7__ ipfw_obj_tentry ;
struct TYPE_15__ {scalar_t__ opcode; } ;
struct TYPE_11__ {int length; } ;
struct TYPE_13__ {int type; TYPE_1__ head; } ;
struct TYPE_18__ {TYPE_5__ opheader; TYPE_3__ ntlv; } ;
typedef TYPE_8__ ipfw_obj_header ;
struct TYPE_12__ {int length; } ;
struct TYPE_19__ {int count; int flags; TYPE_2__ head; } ;
typedef TYPE_9__ ipfw_obj_ctlv ;
typedef int ip_fw3_opheader ;


 int EINVAL ;
 int ENOTSUP ;
 int IPFW_TF_UPDATE ;
 int IPFW_TR_ADDED ;
 int IPFW_TR_DELETED ;
 int IPFW_TR_ERROR ;
 int IPFW_TR_EXISTS ;
 int IPFW_TR_LIMIT ;
 int IPFW_TR_NOTFOUND ;
 int IPFW_TR_UPDATED ;
 scalar_t__ IP_FW_TABLE_XADD ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int TEI_FLAGS_ADDED ;
 int TEI_FLAGS_DELETED ;
 int TEI_FLAGS_ERROR ;
 int TEI_FLAGS_EXISTS ;
 int TEI_FLAGS_LIMIT ;
 int TEI_FLAGS_NOTFOUND ;
 int TEI_FLAGS_UPDATE ;
 int TEI_FLAGS_UPDATED ;
 int add_table_entry (struct ip_fw_chain*,struct tid_info*,struct tentry_info*,int ,int) ;
 int del_table_entry (struct ip_fw_chain*,struct tid_info*,struct tentry_info*,int ,int) ;
 int free (struct tentry_info*,int ) ;
 int ipfw_export_table_value_v1 (struct table_value*,int *) ;
 int ipfw_get_sopt_header (struct sockopt_data*,int) ;
 int ipfw_import_table_value_v1 (int *) ;
 struct tentry_info* malloc (int,int ,int) ;
 int memset (struct tentry_info*,int ,int) ;
 int objheader_to_ti (TYPE_8__*,struct tid_info*) ;

__attribute__((used)) static int
manage_table_ent_v1(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_obj_tentry *tent, *ptent;
 ipfw_obj_ctlv *ctlv;
 ipfw_obj_header *oh;
 struct tentry_info *ptei, tei, *tei_buf;
 struct tid_info ti;
 int error, i, kidx, read;


 if (sd->valsize < (sizeof(*oh) + sizeof(*ctlv)))
  return (EINVAL);


 if (sd->valsize != sd->kavail)
  return (EINVAL);

 oh = (ipfw_obj_header *)sd->kbuf;


 if (oh->ntlv.head.length != sizeof(oh->ntlv))
  return (EINVAL);

 read = sizeof(*oh);

 ctlv = (ipfw_obj_ctlv *)(oh + 1);
 if (ctlv->head.length + read != sd->valsize)
  return (EINVAL);

 read += sizeof(*ctlv);
 tent = (ipfw_obj_tentry *)(ctlv + 1);
 if (ctlv->count * sizeof(*tent) + read != sd->valsize)
  return (EINVAL);

 if (ctlv->count == 0)
  return (0);






 ipfw_get_sopt_header(sd, sd->valsize);


 ptent = tent;
 kidx = tent->idx;
 for (i = 0; i < ctlv->count; i++, ptent++) {
  if (ptent->head.length != sizeof(*ptent))
   return (EINVAL);
  if (ptent->idx != kidx)
   return (ENOTSUP);
 }


 objheader_to_ti(oh, &ti);
 ti.type = oh->ntlv.type;
 ti.uidx = kidx;


 if (ctlv->count == 1) {
  memset(&tei, 0, sizeof(tei));
  tei_buf = &tei;
 } else
  tei_buf = malloc(ctlv->count * sizeof(tei), M_TEMP,
      M_WAITOK | M_ZERO);

 ptei = tei_buf;
 ptent = tent;
 for (i = 0; i < ctlv->count; i++, ptent++, ptei++) {
  ptei->paddr = &ptent->k;
  ptei->subtype = ptent->subtype;
  ptei->masklen = ptent->masklen;
  if (ptent->head.flags & IPFW_TF_UPDATE)
   ptei->flags |= TEI_FLAGS_UPDATE;

  ipfw_import_table_value_v1(&ptent->v.value);
  ptei->pvalue = (struct table_value *)&ptent->v.value;
 }

 error = (oh->opheader.opcode == IP_FW_TABLE_XADD) ?
     add_table_entry(ch, &ti, tei_buf, ctlv->flags, ctlv->count) :
     del_table_entry(ch, &ti, tei_buf, ctlv->flags, ctlv->count);


 ptei = tei_buf;
 ptent = tent;
 for (i = 0; i < ctlv->count; i++, ptent++, ptei++) {
  if (ptei->flags & TEI_FLAGS_ADDED)
   ptent->result = IPFW_TR_ADDED;
  else if (ptei->flags & TEI_FLAGS_DELETED)
   ptent->result = IPFW_TR_DELETED;
  else if (ptei->flags & TEI_FLAGS_UPDATED)
   ptent->result = IPFW_TR_UPDATED;
  else if (ptei->flags & TEI_FLAGS_LIMIT)
   ptent->result = IPFW_TR_LIMIT;
  else if (ptei->flags & TEI_FLAGS_ERROR)
   ptent->result = IPFW_TR_ERROR;
  else if (ptei->flags & TEI_FLAGS_NOTFOUND)
   ptent->result = IPFW_TR_NOTFOUND;
  else if (ptei->flags & TEI_FLAGS_EXISTS)
   ptent->result = IPFW_TR_EXISTS;
  ipfw_export_table_value_v1(ptei->pvalue, &ptent->v.value);
 }

 if (tei_buf != &tei)
  free(tei_buf, M_TEMP);

 return (error);
}
