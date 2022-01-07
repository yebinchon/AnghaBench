
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmclog_buffer {size_t plb_domain; } ;
struct TYPE_2__ {int pdbh_head; } ;


 int TAILQ_INSERT_HEAD (int *,struct pmclog_buffer*,int ) ;
 int plb_next ;
 TYPE_1__** pmc_dom_hdrs ;

__attribute__((used)) static inline void
pmc_plb_rele_unlocked(struct pmclog_buffer *plb)
{
 TAILQ_INSERT_HEAD(&pmc_dom_hdrs[plb->plb_domain]->pdbh_head, plb, plb_next);
}
