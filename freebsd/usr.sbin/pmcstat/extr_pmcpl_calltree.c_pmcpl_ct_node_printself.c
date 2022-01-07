
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
struct pmcpl_ct_node {scalar_t__ pct_type; int pct_ninstr; int pct_samples; TYPE_2__* pct_instr; TYPE_3__* pct_image; scalar_t__ pct_func; TYPE_1__* pct_sym; int pct_ifn; int pct_ifl; } ;
typedef int sourcefile ;
typedef int funcname ;
struct TYPE_8__ {int pa_graphfile; } ;
struct TYPE_7__ {scalar_t__ pi_vaddr; int pi_fullpath; } ;
struct TYPE_6__ {int pctf_samples; scalar_t__ pctf_func; } ;
struct TYPE_5__ {int ps_name; } ;


 int PATH_MAX ;
 int PMCPL_CT_SAMPLE (int,int *) ;
 scalar_t__ PMCPL_PCT_NAME ;
 TYPE_4__ args ;
 int fprintf (int ,char*,...) ;
 int pmcpl_ct_node_printchild (struct pmcpl_ct_node*,scalar_t__,int) ;
 scalar_t__ pmcstat_image_addr2line (TYPE_3__*,scalar_t__,char*,int,int*,char*,int) ;
 int pmcstat_npmcs ;
 char* pmcstat_string_unintern (int ) ;

__attribute__((used)) static void
pmcpl_ct_node_printself(struct pmcpl_ct_node *ct)
{
 int i, j, fline, line;
 uintfptr_t faddr, addr;
 char sourcefile[PATH_MAX];
 char funcname[PATH_MAX];




 fprintf(args.pa_graphfile, "ob=%s\n",
     pmcstat_string_unintern(ct->pct_image->pi_fullpath));




 faddr = ct->pct_image->pi_vaddr + ct->pct_func;
 fline = 0;
 if (ct->pct_type == PMCPL_PCT_NAME) {
  fprintf(args.pa_graphfile, "fl=%s\nfn=%s\n",
      pmcstat_string_unintern(ct->pct_ifl),
      pmcstat_string_unintern(ct->pct_ifn));
 } else if (pmcstat_image_addr2line(ct->pct_image, faddr,
     sourcefile, sizeof(sourcefile), &fline,
     funcname, sizeof(funcname))) {
  fprintf(args.pa_graphfile, "fl=%s\nfn=%s\n",
      sourcefile, funcname);
 } else {
  if (ct->pct_sym != ((void*)0))
   fprintf(args.pa_graphfile, "fl=???\nfn=%s\n",
       pmcstat_string_unintern(ct->pct_sym->ps_name));
  else
   fprintf(args.pa_graphfile, "fl=???\nfn=%p\n",
       (void *)(ct->pct_image->pi_vaddr + ct->pct_func));
 }




 if (ct->pct_ninstr > 0) {



  for (i = 0; i < ct->pct_ninstr; i++) {
   addr = ct->pct_image->pi_vaddr +
       ct->pct_instr[i].pctf_func;
   line = 0;
   pmcstat_image_addr2line(ct->pct_image, addr,
       sourcefile, sizeof(sourcefile), &line,
       funcname, sizeof(funcname));
   fprintf(args.pa_graphfile, "%p %u",
       (void *)addr, line);
   for (j = 0; j<pmcstat_npmcs; j++)
    fprintf(args.pa_graphfile, " %u",
        PMCPL_CT_SAMPLE(j,
        &ct->pct_instr[i].pctf_samples));
   fprintf(args.pa_graphfile, "\n");
  }
 } else {

  fprintf(args.pa_graphfile, "%p %u", (void *)faddr, fline);
  for (i = 0; i<pmcstat_npmcs ; i++)
   fprintf(args.pa_graphfile, " %u",
       PMCPL_CT_SAMPLE(i, &ct->pct_samples));
  fprintf(args.pa_graphfile, "\n");
 }

 pmcpl_ct_node_printchild(ct, faddr, fline);
}
