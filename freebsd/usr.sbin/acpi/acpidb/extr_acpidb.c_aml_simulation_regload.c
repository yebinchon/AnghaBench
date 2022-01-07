
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ACPIRegionContent {void* value; void* addr; void* regtype; } ;
typedef int FILE ;


 int aml_simulate_regcontent_write (void*,void*,void**) ;
 int aml_simulation_initialized ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 void* strtoq (char*,char**,int) ;

__attribute__((used)) static void
aml_simulation_regload(const char *dumpfile)
{
 char buf[256], *np, *ep;
 struct ACPIRegionContent rc;
 FILE *fp;

 if (!aml_simulation_initialized) {
  return;
 }

 if ((fp = fopen(dumpfile, "r")) == ((void*)0)) {
  return;
 }

 while (fgets(buf, sizeof buf, fp) != ((void*)0)) {
  np = buf;

  rc.regtype = strtoq(np, &ep, 10);
  if (np == ep) {
   continue;
  }
  np = ep;


  rc.addr = strtoq(np, &ep, 16);
  if (np == ep) {
   continue;
  }
  np = ep;


  rc.value = strtoq(np, &ep, 16);
  if (np == ep) {
   continue;
  }
  aml_simulate_regcontent_write(rc.regtype, rc.addr, &rc.value);
 }

 fclose(fp);
}
