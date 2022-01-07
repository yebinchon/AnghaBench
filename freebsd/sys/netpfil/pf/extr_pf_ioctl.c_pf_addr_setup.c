
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pf_ruleset {int dummy; } ;
struct TYPE_4__ {int * tbl; } ;
struct TYPE_3__ {int tblname; } ;
struct pf_addr_wrap {int type; TYPE_2__ p; TYPE_1__ v; } ;
typedef int sa_family_t ;


 int ENOMEM ;


 int pfi_dynaddr_setup (struct pf_addr_wrap*,int ) ;
 int * pfr_attach_table (struct pf_ruleset*,int ) ;

__attribute__((used)) static int
pf_addr_setup(struct pf_ruleset *ruleset, struct pf_addr_wrap *addr,
    sa_family_t af)
{
 int error = 0;

 switch (addr->type) {
 case 128:
  addr->p.tbl = pfr_attach_table(ruleset, addr->v.tblname);
  if (addr->p.tbl == ((void*)0))
   error = ENOMEM;
  break;
 case 129:
  error = pfi_dynaddr_setup(addr, af);
  break;
 }

 return (error);
}
