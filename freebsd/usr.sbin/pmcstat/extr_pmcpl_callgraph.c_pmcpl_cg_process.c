
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
typedef size_t uint32_t ;
struct pmcstat_symbol {scalar_t__ ps_start; } ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_pmcrecord {int pr_dubious_frames; int pr_pmcid; } ;
struct pmcstat_pcmap {scalar_t__ ppm_lowpc; struct pmcstat_image* ppm_image; } ;
struct pmcstat_image {scalar_t__ pi_start; scalar_t__ pi_vaddr; } ;
struct pmcstat_cgnode {int pcg_count; } ;
typedef int pmc_id_t ;
struct TYPE_4__ {scalar_t__ pa_graphdepth; } ;
struct TYPE_3__ {int ps_callchain_dubious_frames; } ;


 TYPE_2__ args ;
 struct pmcstat_cgnode* pmcstat_cgnode_find (struct pmcstat_cgnode*,struct pmcstat_image*,scalar_t__) ;
 struct pmcstat_cgnode* pmcstat_cgnode_hash_lookup_pc (struct pmcstat_process*,int ,scalar_t__,int) ;
 struct pmcstat_process* pmcstat_kernproc ;
 struct pmcstat_pcmap* pmcstat_process_find_map (struct pmcstat_process*,scalar_t__) ;
 TYPE_1__ pmcstat_stats ;
 struct pmcstat_symbol* pmcstat_symbol_search (struct pmcstat_image*,scalar_t__) ;

void
pmcpl_cg_process(struct pmcstat_process *pp, struct pmcstat_pmcrecord *pmcr,
    uint32_t nsamples, uintfptr_t *cc, int usermode, uint32_t cpu)
{
 uintfptr_t pc, loadaddress;
 uint32_t n;
 struct pmcstat_image *image;
 struct pmcstat_pcmap *ppm;
 struct pmcstat_symbol *sym;
 struct pmcstat_cgnode *parent, *child;
 struct pmcstat_process *km;
 pmc_id_t pmcid;

 (void) cpu;






 pc = cc[0];
 pmcid = pmcr->pr_pmcid;
 child = parent = pmcstat_cgnode_hash_lookup_pc(pp, pmcid, pc, usermode);
 if (parent == ((void*)0)) {
  pmcstat_stats.ps_callchain_dubious_frames++;
  pmcr->pr_dubious_frames++;
  return;
 }

 parent->pcg_count++;
 km = pmcstat_kernproc;

 for (n = 1; n < (uint32_t) args.pa_graphdepth && n < nsamples; n++,
     parent = child) {
  pc = cc[n];

  ppm = pmcstat_process_find_map(usermode ? pp : km, pc);
  if (ppm == ((void*)0)) {

   if (!usermode) {
    ppm = pmcstat_process_find_map(pp, pc);
    if (ppm != ((void*)0))
     km = pp;
   }
  }
  if (ppm == ((void*)0))
   continue;

  image = ppm->ppm_image;
  loadaddress = ppm->ppm_lowpc + image->pi_vaddr -
      image->pi_start;
  pc -= loadaddress;

  if ((sym = pmcstat_symbol_search(image, pc)) != ((void*)0))
   pc = sym->ps_start;

  child = pmcstat_cgnode_find(parent, image, pc);
  child->pcg_count++;
 }
}
