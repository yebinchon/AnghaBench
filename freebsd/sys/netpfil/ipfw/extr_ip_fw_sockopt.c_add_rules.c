
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct sockopt_data {int valsize; } ;
struct rule_check_info {int krule; scalar_t__ urule; TYPE_4__* ctlv; } ;
struct ip_fw_rule {int rulenum; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_7__ {int idx; int name; TYPE_1__ head; } ;
typedef TYPE_3__ ipfw_obj_ntlv ;
struct TYPE_6__ {scalar_t__ type; int length; } ;
struct TYPE_8__ {int count; int objsize; TYPE_2__ head; } ;
typedef TYPE_4__ ipfw_obj_ctlv ;
typedef int ip_fw3_opheader ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ IPFW_TLV_RULE_LIST ;
 scalar_t__ IPFW_TLV_TBLNAME_LIST ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int RULEKSIZE1 (struct ip_fw_rule*) ;
 int RULESIZE (struct ip_fw_rule*) ;
 int check_ipfw_rule1 (struct ip_fw_rule*,int,struct rule_check_info*) ;
 int commit_rules (struct ip_fw_chain*,struct rule_check_info*,int) ;
 int free (struct rule_check_info*,int ) ;
 int import_rule1 (struct rule_check_info*) ;
 int ipfw_alloc_rule (struct ip_fw_chain*,int) ;
 int ipfw_check_object_name_generic (int ) ;
 int ipfw_free_rule (int ) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;
 struct rule_check_info* malloc (int,int ,int) ;
 int memset (struct rule_check_info*,int ,int) ;
 int printf (char*,int,int) ;
 int roundup2 (int,int) ;

__attribute__((used)) static int
add_rules(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_obj_ctlv *ctlv, *rtlv, *tstate;
 ipfw_obj_ntlv *ntlv;
 int clen, error, idx;
 uint32_t count, read;
 struct ip_fw_rule *r;
 struct rule_check_info rci, *ci, *cbuf;
 int i, rsize;

 op3 = (ip_fw3_opheader *)ipfw_get_sopt_space(sd, sd->valsize);
 ctlv = (ipfw_obj_ctlv *)(op3 + 1);

 read = sizeof(ip_fw3_opheader);
 rtlv = ((void*)0);
 tstate = ((void*)0);
 cbuf = ((void*)0);
 memset(&rci, 0, sizeof(struct rule_check_info));

 if (read + sizeof(*ctlv) > sd->valsize)
  return (EINVAL);

 if (ctlv->head.type == IPFW_TLV_TBLNAME_LIST) {
  clen = ctlv->head.length;

  if (clen > sd->valsize || clen < sizeof(*ctlv))
   return (EINVAL);
  if ((clen % sizeof(uint64_t)) != 0)
   return (EINVAL);





  count = (ctlv->head.length - sizeof(*ctlv)) / sizeof(*ntlv);
  if (ctlv->count != count || ctlv->objsize != sizeof(*ntlv))
   return (EINVAL);






  idx = -1;
  ntlv = (ipfw_obj_ntlv *)(ctlv + 1);
  while (count > 0) {
   if (ntlv->head.length != sizeof(ipfw_obj_ntlv))
    return (EINVAL);

   error = ipfw_check_object_name_generic(ntlv->name);
   if (error != 0)
    return (error);

   if (ntlv->idx <= idx)
    return (EINVAL);

   idx = ntlv->idx;
   count--;
   ntlv++;
  }

  tstate = ctlv;
  read += ctlv->head.length;
  ctlv = (ipfw_obj_ctlv *)((caddr_t)ctlv + ctlv->head.length);
 }

 if (read + sizeof(*ctlv) > sd->valsize)
  return (EINVAL);

 if (ctlv->head.type == IPFW_TLV_RULE_LIST) {
  clen = ctlv->head.length;
  if (clen + read > sd->valsize || clen < sizeof(*ctlv))
   return (EINVAL);
  if ((clen % sizeof(uint64_t)) != 0)
   return (EINVAL);




  if (ctlv->count != 1)
   return (ENOTSUP);

  clen -= sizeof(*ctlv);

  if (ctlv->count > clen / sizeof(struct ip_fw_rule))
   return (EINVAL);


  if (ctlv->count == 1) {
   memset(&rci, 0, sizeof(struct rule_check_info));
   cbuf = &rci;
  } else
   cbuf = malloc(ctlv->count * sizeof(*ci), M_TEMP,
       M_WAITOK | M_ZERO);
  ci = cbuf;






  idx = 0;
  r = (struct ip_fw_rule *)(ctlv + 1);
  count = 0;
  error = 0;
  while (clen > 0) {
   rsize = roundup2(RULESIZE(r), sizeof(uint64_t));
   if (rsize > clen || ctlv->count <= count) {
    error = EINVAL;
    break;
   }

   ci->ctlv = tstate;
   error = check_ipfw_rule1(r, rsize, ci);
   if (error != 0)
    break;


   if (r->rulenum != 0 && r->rulenum < idx) {
    printf("rulenum %d idx %d\n", r->rulenum, idx);
    error = EINVAL;
    break;
   }
   idx = r->rulenum;

   ci->urule = (caddr_t)r;

   rsize = roundup2(rsize, sizeof(uint64_t));
   clen -= rsize;
   r = (struct ip_fw_rule *)((caddr_t)r + rsize);
   count++;
   ci++;
  }

  if (ctlv->count != count || error != 0) {
   if (cbuf != &rci)
    free(cbuf, M_TEMP);
   return (EINVAL);
  }

  rtlv = ctlv;
  read += ctlv->head.length;
  ctlv = (ipfw_obj_ctlv *)((caddr_t)ctlv + ctlv->head.length);
 }

 if (read != sd->valsize || rtlv == ((void*)0) || rtlv->count == 0) {
  if (cbuf != ((void*)0) && cbuf != &rci)
   free(cbuf, M_TEMP);
  return (EINVAL);
 }





 for (i = 0, ci = cbuf; i < rtlv->count; i++, ci++) {
  clen = RULEKSIZE1((struct ip_fw_rule *)ci->urule);
  ci->krule = ipfw_alloc_rule(chain, clen);
  import_rule1(ci);
 }

 if ((error = commit_rules(chain, cbuf, rtlv->count)) != 0) {

  for (i = 0, ci = cbuf; i < rtlv->count; i++, ci++)
   ipfw_free_rule(ci->krule);
 }

 if (cbuf != ((void*)0) && cbuf != &rci)
  free(cbuf, M_TEMP);

 return (error);
}
