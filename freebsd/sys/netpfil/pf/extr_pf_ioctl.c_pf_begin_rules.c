
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct pf_ruleset {TYPE_2__* rules; } ;
struct pf_rule {int dummy; } ;
struct TYPE_3__ {int open; scalar_t__ ticket; int rcount; int ptr; } ;
struct TYPE_4__ {TYPE_1__ inactive; } ;


 int EINVAL ;
 int PF_RULESET_MAX ;
 int PF_RULES_WASSERT () ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_ruleset* pf_find_or_create_ruleset (char const*) ;
 int pf_unlink_rule (int ,struct pf_rule*) ;

__attribute__((used)) static int
pf_begin_rules(u_int32_t *ticket, int rs_num, const char *anchor)
{
 struct pf_ruleset *rs;
 struct pf_rule *rule;

 PF_RULES_WASSERT();

 if (rs_num < 0 || rs_num >= PF_RULESET_MAX)
  return (EINVAL);
 rs = pf_find_or_create_ruleset(anchor);
 if (rs == ((void*)0))
  return (EINVAL);
 while ((rule = TAILQ_FIRST(rs->rules[rs_num].inactive.ptr)) != ((void*)0)) {
  pf_unlink_rule(rs->rules[rs_num].inactive.ptr, rule);
  rs->rules[rs_num].inactive.rcount--;
 }
 *ticket = ++rs->rules[rs_num].inactive.ticket;
 rs->rules[rs_num].inactive.open = 1;
 return (0);
}
