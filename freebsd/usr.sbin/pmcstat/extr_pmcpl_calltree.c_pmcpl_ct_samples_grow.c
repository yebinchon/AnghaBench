
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcpl_ct_sample {unsigned int npmcs; int * sb; } ;


 int EX_SOFTWARE ;
 int PMCPL_CT_GROWSIZE ;
 int bzero (char*,unsigned int) ;
 int errx (int ,char*) ;
 unsigned int max (unsigned int,int ) ;
 unsigned int pmcstat_npmcs ;
 int * reallocarray (int *,unsigned int,int) ;

__attribute__((used)) static void
pmcpl_ct_samples_grow(struct pmcpl_ct_sample *samples)
{
 unsigned int npmcs;


 if (pmcstat_npmcs <= samples->npmcs)
                return;

 npmcs = samples->npmcs +
     max(pmcstat_npmcs - samples->npmcs, PMCPL_CT_GROWSIZE);
 samples->sb = reallocarray(samples->sb, npmcs, sizeof(unsigned));
 if (samples->sb == ((void*)0))
  errx(EX_SOFTWARE, "ERROR: out of memory");
 bzero((char *)samples->sb + samples->npmcs * sizeof(unsigned),
     (npmcs - samples->npmcs) * sizeof(unsigned));
 samples->npmcs = npmcs;
}
