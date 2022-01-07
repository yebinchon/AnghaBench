
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct aggent {uintptr_t ag_ostart; uintptr_t ag_oend; int ag_nsamples; int * ag_name; } ;


 struct aggent* calloc (int,int) ;
 int free (struct aggent*) ;
 int * strdup (char const*) ;

__attribute__((used)) static struct aggent *
agg_create(const char *name, u_int nsamples, uintptr_t start, uintptr_t end)
{
 struct aggent *agg;

 agg = calloc(1, sizeof(struct aggent));
 if (agg == ((void*)0))
  return (((void*)0));
 agg->ag_name = strdup(name);
 if (agg->ag_name == ((void*)0)) {
  free(agg);
  return (((void*)0));
 }
 agg->ag_nsamples = nsamples;
 agg->ag_ostart = start;
 agg->ag_oend = end;
 return (agg);
}
