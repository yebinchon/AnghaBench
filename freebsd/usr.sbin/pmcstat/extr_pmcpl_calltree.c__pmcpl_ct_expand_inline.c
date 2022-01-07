
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
struct TYPE_7__ {int npmcs; int * sb; } ;
struct pmcpl_ct_node {int pct_ninstr; TYPE_2__* pct_instr; TYPE_1__ pct_samples; int pct_sym; scalar_t__ pct_func; TYPE_3__* pct_image; } ;
typedef int sourcefile ;
typedef int funcname ;
typedef int ffuncname ;
typedef int buffer ;
struct TYPE_11__ {scalar_t__* sb; } ;
struct TYPE_10__ {int pa_verbosity; int pa_printfile; } ;
struct TYPE_9__ {scalar_t__ pi_vaddr; } ;
struct TYPE_8__ {TYPE_6__ pctf_samples; scalar_t__ pctf_func; } ;


 int PATH_MAX ;
 unsigned int PMCPL_CT_SAMPLE (int,TYPE_6__*) ;
 TYPE_5__ args ;
 int assert (int ) ;
 int fprintf (int ,char*,void*,char*,char*) ;
 int pmcpl_ct_instr_add (struct pmcpl_ct_node*,int,scalar_t__,unsigned int) ;
 struct pmcpl_ct_node* pmcpl_ct_node_hash_lookup (TYPE_3__*,scalar_t__,int ,char*,char*) ;
 int pmcpl_ct_node_update (struct pmcpl_ct_node*,struct pmcpl_ct_node*,int,unsigned int,int ) ;
 int pmcstat_image_addr2line (TYPE_3__*,scalar_t__,char*,int,unsigned int*,char*,int) ;
 int pmcstat_npmcs ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
_pmcpl_ct_expand_inline(struct pmcpl_ct_node *ct)
{
 int i, j;
 unsigned fline, line, v;
 uintfptr_t faddr, addr, pc;
 char sourcefile[PATH_MAX];
 char ffuncname[PATH_MAX], funcname[PATH_MAX];
 char buffer[PATH_MAX];
 struct pmcpl_ct_node *child;




 faddr = ct->pct_image->pi_vaddr + ct->pct_func;
 fline = 0;
 if (!pmcstat_image_addr2line(ct->pct_image, faddr,
     sourcefile, sizeof(sourcefile), &fline,
     ffuncname, sizeof(ffuncname)))
  return;

 for (i = 0; i < ct->pct_ninstr; i++) {
  addr = ct->pct_image->pi_vaddr +
      ct->pct_instr[i].pctf_func;
  line = 0;
  if (!pmcstat_image_addr2line(ct->pct_image, addr,
      sourcefile, sizeof(sourcefile), &line,
      funcname, sizeof(funcname)))
   continue;

  if (strcmp(funcname, ffuncname) == 0)
   continue;







  if (args.pa_verbosity >= 2)
   fprintf(args.pa_printfile,
       "WARNING: inlined function at %p %s in %s\n",
       (void *)addr, funcname, ffuncname);

  snprintf(buffer, sizeof(buffer), "%s@%s",
   funcname, ffuncname);
  child = pmcpl_ct_node_hash_lookup(ct->pct_image,
      ct->pct_func, ct->pct_sym, sourcefile, buffer);
  assert(child != ((void*)0));
  pc = ct->pct_instr[i].pctf_func;
  for (j = 0; j<pmcstat_npmcs; j++) {
   v = PMCPL_CT_SAMPLE(j,
       &ct->pct_instr[i].pctf_samples);
   if (v == 0)
    continue;
   pmcpl_ct_instr_add(child, j, pc, v);
   pmcpl_ct_node_update(ct, child, j, v, 0);
   if (j < ct->pct_samples.npmcs)
    ct->pct_samples.sb[j] -=
        ct->pct_instr[i].pctf_samples.sb[j];
   ct->pct_instr[i].pctf_samples.sb[j] = 0;
  }
 }
}
