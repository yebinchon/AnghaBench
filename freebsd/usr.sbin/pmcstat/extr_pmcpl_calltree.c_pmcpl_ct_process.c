
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
typedef scalar_t__ uint32_t ;
struct pmcstat_symbol {scalar_t__ ps_start; } ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_pmcrecord {int pr_pmcin; int pr_dubious_frames; } ;
struct pmcstat_pcmap {struct pmcstat_image* ppm_image; scalar_t__ ppm_lowpc; } ;
struct pmcstat_image {scalar_t__ pi_start; scalar_t__ pi_vaddr; } ;
struct TYPE_6__ {int * sb; } ;
struct pmcpl_ct_node {TYPE_2__ pct_samples; } ;
struct TYPE_7__ {scalar_t__ pa_ctdumpinstr; } ;
struct TYPE_5__ {int ps_callchain_dubious_frames; int ps_samples_unknown_function; } ;


 int PMC_CALLCHAIN_DEPTH_MAX ;
 TYPE_4__ args ;
 int assert (int) ;
 TYPE_2__ pmcpl_ct_callid ;
 int pmcpl_ct_instr_add (struct pmcpl_ct_node*,int,scalar_t__,int) ;
 struct pmcpl_ct_node* pmcpl_ct_node_hash_lookup (struct pmcstat_image*,scalar_t__,struct pmcstat_symbol*,int *,int *) ;
 int pmcpl_ct_node_update (struct pmcpl_ct_node*,struct pmcpl_ct_node*,int,int,int) ;
 struct pmcpl_ct_node* pmcpl_ct_root ;
 int pmcpl_ct_samples_grow (TYPE_2__*) ;
 struct pmcstat_process* pmcstat_kernproc ;
 struct pmcstat_pcmap* pmcstat_process_find_map (struct pmcstat_process*,scalar_t__) ;
 TYPE_1__ pmcstat_stats ;
 struct pmcstat_symbol* pmcstat_symbol_search (struct pmcstat_image*,scalar_t__) ;

void
pmcpl_ct_process(struct pmcstat_process *pp, struct pmcstat_pmcrecord *pmcr,
    uint32_t nsamples, uintfptr_t *cc, int usermode, uint32_t cpu)
{
 int i, n, pmcin;
 uintfptr_t pc, loadaddress;
 struct pmcstat_image *image;
 struct pmcstat_symbol *sym;
 struct pmcstat_pcmap *ppm[PMC_CALLCHAIN_DEPTH_MAX];
 struct pmcstat_process *km;
 struct pmcpl_ct_node *ct;
 struct pmcpl_ct_node *ctl[PMC_CALLCHAIN_DEPTH_MAX+1];

 (void) cpu;

 assert(nsamples>0 && nsamples<=PMC_CALLCHAIN_DEPTH_MAX);


 pmcin = pmcr->pr_pmcin;





 km = pmcstat_kernproc;
 for (n = 0; n < (int)nsamples; n++) {
  ppm[n] = pmcstat_process_find_map(usermode ?
      pp : km, cc[n]);
  if (ppm[n] == ((void*)0)) {

   if (!usermode) {
    ppm[n] = pmcstat_process_find_map(pp, cc[n]);
    if (ppm[n] != ((void*)0))
     km = pp;
   }
  }
  if (ppm[n] == ((void*)0))
   break;
 }
 if (n-- == 0) {
  pmcstat_stats.ps_callchain_dubious_frames++;
  pmcr->pr_dubious_frames++;
  return;
 }


 pmcpl_ct_samples_grow(&pmcpl_ct_callid);
 pmcpl_ct_callid.sb[pmcin]++;




 ctl[0] = pmcpl_ct_root;
 for (i = 1; n >= 0; n--) {
  image = ppm[n]->ppm_image;
  loadaddress = ppm[n]->ppm_lowpc +
      image->pi_vaddr - image->pi_start;

  pc = cc[n] - loadaddress;




  if ((sym = pmcstat_symbol_search(image, pc)) != ((void*)0))
   pc = sym->ps_start;
  else
   pmcstat_stats.ps_samples_unknown_function++;

  ct = pmcpl_ct_node_hash_lookup(image, pc, sym, ((void*)0), ((void*)0));
  if (ct == ((void*)0)) {
   pmcstat_stats.ps_callchain_dubious_frames++;
   continue;
  }
  ctl[i++] = ct;
 }

 if (i == 1)
  return;
 n = i;

 ct = ctl[0];
 for (i = 1; i < n; i++)
  pmcpl_ct_node_update(ctl[i-1], ctl[i], pmcin, 1, 1);




 pmcpl_ct_samples_grow(&ctl[n-1]->pct_samples);
 ctl[n-1]->pct_samples.sb[pmcin]++;


 if (args.pa_ctdumpinstr)
  pmcpl_ct_instr_add(ctl[n-1], pmcin, cc[0] -
      (ppm[0]->ppm_lowpc + ppm[0]->ppm_image->pi_vaddr -
       ppm[0]->ppm_image->pi_start), 1);
}
