
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct ACPIRegionContent {int regtype; int value; scalar_t__ addr; } ;
typedef int FILE ;


 int RegionContentList ;
 int TAILQ_EMPTY (int *) ;
 struct ACPIRegionContent* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_REMOVE (int *,struct ACPIRegionContent*,int ) ;
 int aml_simulation_initialized ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int,int ,int ) ;
 int free (struct ACPIRegionContent*) ;
 int links ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
aml_simulation_regdump(const char *dumpfile)
{
 struct ACPIRegionContent *rc;
 FILE *fp;

 if (!aml_simulation_initialized) {
  return;
 }
 if ((fp = fopen(dumpfile, "w")) == ((void*)0)) {
  warn("%s", dumpfile);
  return;
 }
 while (!TAILQ_EMPTY(&RegionContentList)) {
  rc = TAILQ_FIRST(&RegionContentList);
  fprintf(fp, "%d	0x%jx	0x%x\n",
      rc->regtype, (uintmax_t)rc->addr, rc->value);
  TAILQ_REMOVE(&RegionContentList, rc, links);
  free(rc);
 }

 fclose(fp);
 TAILQ_INIT(&RegionContentList);
}
