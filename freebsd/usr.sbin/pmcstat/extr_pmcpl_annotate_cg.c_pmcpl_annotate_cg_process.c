
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
typedef scalar_t__ uint32_t ;
struct pmcstat_symbol {int dummy; } ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_pmcrecord {int dummy; } ;
struct pmcstat_pcmap {scalar_t__ ppm_lowpc; scalar_t__ ppm_highpc; struct pmcstat_image* ppm_image; } ;
struct pmcstat_image {scalar_t__ pi_vaddr; scalar_t__ pi_start; } ;
typedef int funcname ;
typedef int filename ;
struct TYPE_2__ {int pa_graphfile; } ;


 int PATH_MAX ;
 TYPE_1__ args ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int pmcstat_image_addr2line (struct pmcstat_image*,scalar_t__,char*,int,unsigned int*,char*,int) ;
 struct pmcstat_process* pmcstat_kernproc ;
 struct pmcstat_pcmap* pmcstat_process_find_map (struct pmcstat_process*,scalar_t__) ;
 struct pmcstat_symbol* pmcstat_symbol_search (struct pmcstat_image*,scalar_t__) ;

void
pmcpl_annotate_cg_process(struct pmcstat_process *pp, struct pmcstat_pmcrecord *pmcr,
    uint32_t nsamples, uintfptr_t *cc, int usermode, uint32_t cpu)
{
 struct pmcstat_pcmap *map;
 struct pmcstat_symbol *sym;
 uintfptr_t newpc;
 struct pmcstat_image *image;
 int i;
 char filename[PATH_MAX], funcname[PATH_MAX];
 unsigned sline;

 (void) pmcr; (void) nsamples; (void) usermode; (void) cpu;

 for (i = 0; i < (int) nsamples; i++) {
  map = ((void*)0);
  sym = ((void*)0);
  image = ((void*)0);
  filename[0] = '\0';
  funcname[0] = '\0';
  sline = 0;

  map = pmcstat_process_find_map(usermode ? pp : pmcstat_kernproc, cc[i]);
  if (map != ((void*)0)) {
   assert(cc[i] >= map->ppm_lowpc && cc[i] < map->ppm_highpc);
   image = map->ppm_image;
   newpc = cc[i] - (map->ppm_lowpc +
    (image->pi_vaddr - image->pi_start));
   sym = pmcstat_symbol_search(image, newpc);
  }

  if (map != ((void*)0) && image != ((void*)0) && sym != ((void*)0)) {
   (void) pmcstat_image_addr2line(image, cc[i],
       filename, sizeof(filename), &sline, funcname, sizeof(funcname));
  }

  if (map != ((void*)0) && sym != ((void*)0)) {
   fprintf(args.pa_graphfile, "%p %s %s:%d\n",
       (void *)cc[i],
       funcname,
       filename,
       sline);
  } else {
   fprintf(args.pa_graphfile, "%p <unknown> ??:0\n",
       (void *) cc[i]);
  }
 }
 fprintf(args.pa_graphfile, "--\n");
}
