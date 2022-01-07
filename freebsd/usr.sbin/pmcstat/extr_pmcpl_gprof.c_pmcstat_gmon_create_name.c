
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_image {int pi_samplename; } ;
typedef int pmcstat_interned_string ;
typedef int pmc_id_t ;
typedef int fullpath ;


 int EX_SOFTWARE ;
 int PATH_MAX ;
 int err (int ,char*) ;
 char* pmcstat_pmcid_to_name (int ) ;
 int pmcstat_string_intern (char*) ;
 char* pmcstat_string_unintern (int ) ;
 int snprintf (char*,int,char*,char const*,char const*,char*) ;

pmcstat_interned_string
pmcstat_gmon_create_name(const char *samplesdir, struct pmcstat_image *image,
    pmc_id_t pmcid)
{
 const char *pmcname;
 char fullpath[PATH_MAX];

 pmcname = pmcstat_pmcid_to_name(pmcid);
 if (!pmcname)
  err(EX_SOFTWARE, "ERROR: cannot find pmcid");

 (void) snprintf(fullpath, sizeof(fullpath),
     "%s/%s/%s", samplesdir, pmcname,
     pmcstat_string_unintern(image->pi_samplename));

 return (pmcstat_string_intern(fullpath));
}
