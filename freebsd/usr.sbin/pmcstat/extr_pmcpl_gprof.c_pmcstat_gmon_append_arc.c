
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rawarc {int raw_count; scalar_t__ raw_selfpc; scalar_t__ raw_frompc; } ;
struct pmcstat_image {scalar_t__ pi_vaddr; } ;
struct pmcstat_gmonfile {int * pgf_file; int pgf_name; } ;
typedef int pmc_id_t ;
typedef int arc ;


 int * fopen (char const*,char*) ;
 int fwrite (struct rawarc*,int,int,int *) ;
 struct pmcstat_gmonfile* pmcstat_image_find_gmonfile (struct pmcstat_image*,int ) ;
 char* pmcstat_string_unintern (int ) ;

__attribute__((used)) static void
pmcstat_gmon_append_arc(struct pmcstat_image *image, pmc_id_t pmcid,
    uintptr_t rawfrom, uintptr_t rawto, uint32_t count)
{
 struct rawarc arc;
 const char *pathname;
 struct pmcstat_gmonfile *pgf;

 if ((pgf = pmcstat_image_find_gmonfile(image, pmcid)) == ((void*)0))
  return;

 if (pgf->pgf_file == ((void*)0)) {
  pathname = pmcstat_string_unintern(pgf->pgf_name);
  if ((pgf->pgf_file = fopen(pathname, "a")) == ((void*)0))
   return;
 }

 arc.raw_frompc = rawfrom + image->pi_vaddr;
 arc.raw_selfpc = rawto + image->pi_vaddr;
 arc.raw_count = count;

 (void) fwrite(&arc, sizeof(arc), 1, pgf->pgf_file);

}
