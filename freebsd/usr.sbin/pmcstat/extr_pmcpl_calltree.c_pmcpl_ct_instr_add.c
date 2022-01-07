
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
struct pmcpl_ct_node {int pct_ninstr; struct pmcpl_ct_instr* pct_instr; int pct_instr_c; } ;
struct TYPE_3__ {unsigned int* sb; } ;
struct pmcpl_ct_instr {scalar_t__ pctf_func; TYPE_1__ pctf_samples; } ;


 int pmcpl_ct_instr_grow (int,int *,struct pmcpl_ct_instr**) ;
 int pmcpl_ct_samples_grow (TYPE_1__*) ;
 int pmcpl_ct_samples_init (TYPE_1__*) ;

__attribute__((used)) static void
pmcpl_ct_instr_add(struct pmcpl_ct_node *ct, int pmcin,
    uintfptr_t pc, unsigned v)
{
 int i;
 struct pmcpl_ct_instr *in;

 for (i = 0; i<ct->pct_ninstr; i++) {
  if (ct->pct_instr[i].pctf_func == pc) {
   in = &ct->pct_instr[i];
   pmcpl_ct_samples_grow(&in->pctf_samples);
   in->pctf_samples.sb[pmcin] += v;
   return;
  }
 }

 pmcpl_ct_instr_grow(ct->pct_ninstr, &ct->pct_instr_c, &ct->pct_instr);
 in = &ct->pct_instr[ct->pct_ninstr];
 in->pctf_func = pc;
 pmcpl_ct_samples_init(&in->pctf_samples);
 pmcpl_ct_samples_grow(&in->pctf_samples);
 in->pctf_samples.sb[pmcin] = v;
 ct->pct_ninstr++;
}
