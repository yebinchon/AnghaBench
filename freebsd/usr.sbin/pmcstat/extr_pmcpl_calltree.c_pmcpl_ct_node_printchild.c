
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
struct pmcpl_ct_node {int pct_narc; scalar_t__ pct_type; TYPE_2__* pct_arc; TYPE_1__* pct_sym; TYPE_3__* pct_image; int pct_ifn; int pct_ifl; scalar_t__ pct_func; } ;
typedef int sourcefile ;
typedef int funcname ;
struct TYPE_8__ {int pa_graphfile; } ;
struct TYPE_7__ {scalar_t__ pi_vaddr; int pi_fullpath; } ;
struct TYPE_6__ {int pcta_call; int pcta_samples; struct pmcpl_ct_node* pcta_child; } ;
struct TYPE_5__ {int ps_name; } ;


 int PATH_MAX ;
 int PMCPL_CT_SAMPLE (int,int *) ;
 scalar_t__ PMCPL_PCT_NAME ;
 TYPE_4__ args ;
 int fprintf (int ,char*,...) ;
 scalar_t__ pmcstat_image_addr2line (TYPE_3__*,scalar_t__,char*,int,int*,char*,int) ;
 int pmcstat_npmcs ;
 char* pmcstat_string_unintern (int ) ;

__attribute__((used)) static void
pmcpl_ct_node_printchild(struct pmcpl_ct_node *ct, uintfptr_t paddr,
    int pline)
{
 int i, j, line;
 uintfptr_t addr;
 struct pmcpl_ct_node *child;
 char sourcefile[PATH_MAX];
 char funcname[PATH_MAX];






 for (i=0 ; i<ct->pct_narc; i++) {
  child = ct->pct_arc[i].pcta_child;

  fprintf(args.pa_graphfile, "cob=%s\n",
      pmcstat_string_unintern(child->pct_image->pi_fullpath));

  addr = child->pct_image->pi_vaddr + child->pct_func;
  line = 0;

  if (child->pct_type == PMCPL_PCT_NAME) {
   fprintf(args.pa_graphfile, "cfi=%s\ncfn=%s\n",
       pmcstat_string_unintern(child->pct_ifl),
       pmcstat_string_unintern(child->pct_ifn));
  } else if (pmcstat_image_addr2line(child->pct_image, addr,
      sourcefile, sizeof(sourcefile), &line,
      funcname, sizeof(funcname))) {
   fprintf(args.pa_graphfile, "cfi=%s\ncfn=%s\n",
    sourcefile, funcname);
  } else {
   if (child->pct_sym != ((void*)0))
    fprintf(args.pa_graphfile,
        "cfi=???\ncfn=%s\n",
        pmcstat_string_unintern(
            child->pct_sym->ps_name));
   else
    fprintf(args.pa_graphfile,
        "cfi=???\ncfn=%p\n", (void *)addr);
  }


  fprintf(args.pa_graphfile, "calls=%u %p %u\n",
      ct->pct_arc[i].pcta_call, (void *)addr, line);





  fprintf(args.pa_graphfile, "%p %u", (void *)paddr, pline);
  for (j = 0; j<pmcstat_npmcs; j++)
   fprintf(args.pa_graphfile, " %u",
       PMCPL_CT_SAMPLE(j, &ct->pct_arc[i].pcta_samples));
  fprintf(args.pa_graphfile, "\n");
 }
}
