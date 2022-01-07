
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif_cmp {int pfik_name; } ;
struct pfi_kif {int dummy; } ;
typedef int s ;


 int PF_RULES_ASSERT () ;
 struct pfi_kif* RB_FIND (int ,int *,struct pfi_kif*) ;
 int V_pfi_ifs ;
 int bzero (struct pfi_kif_cmp*,int) ;
 int pfi_ifhead ;
 int strlcpy (int ,char const*,int) ;

struct pfi_kif *
pfi_kif_find(const char *kif_name)
{
 struct pfi_kif_cmp s;

 PF_RULES_ASSERT();

 bzero(&s, sizeof(s));
 strlcpy(s.pfik_name, kif_name, sizeof(s.pfik_name));

 return (RB_FIND(pfi_ifhead, &V_pfi_ifs, (struct pfi_kif *)&s));
}
