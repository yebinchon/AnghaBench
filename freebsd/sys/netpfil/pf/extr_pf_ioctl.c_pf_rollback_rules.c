
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct pf_ruleset {TYPE_2__* rules; } ;
struct pf_rule {int dummy; } ;
struct TYPE_3__ {scalar_t__ ticket; scalar_t__ open; int rcount; int ptr; } ;
struct TYPE_4__ {TYPE_1__ inactive; } ;


 int EINVAL ;
 int PF_RULESET_MAX ;
 int PF_RULES_WASSERT () ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_ruleset* pf_find_ruleset (char*) ;
 int pf_unlink_rule (int ,struct pf_rule*) ;

__attribute__((used)) static int
pf_rollback_rules(u_int32_t ticket, int rs_num, char *anchor)
{
 struct pf_ruleset *rs;
 struct pf_rule *rule;

 PF_RULES_WASSERT();

 if (rs_num < 0 || rs_num >= PF_RULESET_MAX)
  return (EINVAL);
 rs = pf_find_ruleset(anchor);
 if (rs == ((void*)0) || !rs->rules[rs_num].inactive.open ||
     rs->rules[rs_num].inactive.ticket != ticket)
  return (0);
 while ((rule = TAILQ_FIRST(rs->rules[rs_num].inactive.ptr)) != ((void*)0)) {
  pf_unlink_rule(rs->rules[rs_num].inactive.ptr, rule);
  rs->rules[rs_num].inactive.rcount--;
 }
 rs->rules[rs_num].inactive.open = 0;
 return (0);
}
