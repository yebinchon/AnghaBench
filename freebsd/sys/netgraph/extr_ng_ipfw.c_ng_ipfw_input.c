
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; } ;
struct m_tag {int dummy; } ;
struct ipfw_rule_ref {int info; } ;
struct ip_fw_args {int flags; struct ipfw_rule_ref rule; } ;
struct ip {int dummy; } ;
typedef int * hook_p ;


 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int IPFW_ARGS_IN ;
 int IPFW_INFO_IN ;
 int IPFW_INFO_OUT ;
 int IPFW_ONEPASS ;
 int MTAG_IPFW_RULE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int * fw_node ;
 struct mbuf* m_dup (struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*,int) ;
 struct m_tag* m_tag_alloc (int ,int ,int,int) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int * ng_ipfw_findhook1 (int *,int ) ;

__attribute__((used)) static int
ng_ipfw_input(struct mbuf **m0, struct ip_fw_args *fwa, bool tee)
{
 struct mbuf *m;
 hook_p hook;
 int error = 0;




 if (fw_node == ((void*)0) ||
    (hook = ng_ipfw_findhook1(fw_node, fwa->rule.info)) == ((void*)0))
  return (ESRCH);






 if (tee == 0) {
  struct m_tag *tag;
  struct ipfw_rule_ref *r;
  m = *m0;
  *m0 = ((void*)0);

  tag = m_tag_alloc(MTAG_IPFW_RULE, 0, sizeof(*r),
   M_NOWAIT|M_ZERO);
  if (tag == ((void*)0)) {
   m_freem(m);
   return (ENOMEM);
  }
  r = (struct ipfw_rule_ref *)(tag + 1);
  *r = fwa->rule;
  r->info &= IPFW_ONEPASS;
  r->info |= (fwa->flags & IPFW_ARGS_IN) ?
      IPFW_INFO_IN : IPFW_INFO_OUT;
  m_tag_prepend(m, tag);

 } else
  if ((m = m_dup(*m0, M_NOWAIT)) == ((void*)0))
   return (ENOMEM);

 if (m->m_len < sizeof(struct ip) &&
     (m = m_pullup(m, sizeof(struct ip))) == ((void*)0))
  return (EINVAL);

 NG_SEND_DATA_ONLY(error, hook, m);

 return (error);
}
