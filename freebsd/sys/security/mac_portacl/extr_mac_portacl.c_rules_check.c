
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ucred {int cr_uid; scalar_t__ cr_gid; } ;
struct rule {scalar_t__ r_protocol; int r_port; scalar_t__ r_idtype; scalar_t__ r_id; } ;


 int EPERM ;
 int PRIV_NETINET_RESERVEDPORT ;
 scalar_t__ RULE_GID ;
 scalar_t__ RULE_PROTO_TCP ;
 scalar_t__ RULE_PROTO_UDP ;
 scalar_t__ RULE_UID ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 struct rule* TAILQ_FIRST (int *) ;
 struct rule* TAILQ_NEXT (struct rule*,int ) ;
 scalar_t__ groupmember (scalar_t__,struct ucred*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,scalar_t__) ;
 int portacl_port_high ;
 scalar_t__ portacl_suser_exempt ;
 int printf (char*,int,int,int,int) ;
 int priv_check_cred (struct ucred*,int ) ;
 int r_entries ;
 int rule_head ;
 int rule_mtx ;

__attribute__((used)) static int
rules_check(struct ucred *cred, int family, int type, u_int16_t port)
{
 struct rule *rule;
 int error;






 if (port > portacl_port_high)
  return (0);

 error = EPERM;
 mtx_lock(&rule_mtx);
 for (rule = TAILQ_FIRST(&rule_head);
     rule != ((void*)0);
     rule = TAILQ_NEXT(rule, r_entries)) {
  if (type == SOCK_DGRAM && rule->r_protocol != RULE_PROTO_UDP)
   continue;
  if (type == SOCK_STREAM && rule->r_protocol != RULE_PROTO_TCP)
   continue;
  if (port != rule->r_port)
   continue;
  if (rule->r_idtype == RULE_UID) {
   if (cred->cr_uid == rule->r_id) {
    error = 0;
    break;
   }
  } else if (rule->r_idtype == RULE_GID) {
   if (cred->cr_gid == rule->r_id) {
    error = 0;
    break;
   } else if (groupmember(rule->r_id, cred)) {
    error = 0;
    break;
   }
  } else
   panic("rules_check: unknown rule type %d",
       rule->r_idtype);
 }
 mtx_unlock(&rule_mtx);

 if (error != 0 && portacl_suser_exempt != 0)
  error = priv_check_cred(cred, PRIV_NETINET_RESERVEDPORT);

 return (error);
}
