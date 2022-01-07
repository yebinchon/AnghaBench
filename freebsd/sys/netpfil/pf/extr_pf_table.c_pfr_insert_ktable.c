
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfr_ktable {TYPE_1__* pfrkt_root; } ;
struct TYPE_2__ {int pfrkt_flags; int * pfrkt_refcnt; } ;


 size_t PFR_REFCNT_ANCHOR ;
 int PFR_TFLAG_REFDANCHOR ;
 int PF_RULES_WASSERT () ;
 int RB_INSERT (int ,int *,struct pfr_ktable*) ;
 int V_pfr_ktable_cnt ;
 int V_pfr_ktables ;
 int pfr_ktablehead ;
 int pfr_setflags_ktable (TYPE_1__*,int) ;

__attribute__((used)) static void
pfr_insert_ktable(struct pfr_ktable *kt)
{

 PF_RULES_WASSERT();

 RB_INSERT(pfr_ktablehead, &V_pfr_ktables, kt);
 V_pfr_ktable_cnt++;
 if (kt->pfrkt_root != ((void*)0))
  if (!kt->pfrkt_root->pfrkt_refcnt[PFR_REFCNT_ANCHOR]++)
   pfr_setflags_ktable(kt->pfrkt_root,
       kt->pfrkt_root->pfrkt_flags|PFR_TFLAG_REFDANCHOR);
}
